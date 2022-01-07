; ModuleID = '/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_convert_sourcefiles_in.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_convert_sourcefiles_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@inputdir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"%s/testtablespace\00", align 1
@outputdir = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c".source\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%s/%s/%s.%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"%s: could not open file \22%s\22 for reading: %s\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"%s: could not open file \22%s\22 for writing: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"@abs_srcdir@\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"@abs_builddir@\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"@testtablespace@\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"@libdir@\00", align 1
@dlpath = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"@DLSUFFIX@\00", align 1
@DLSUFFIX = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [37 x i8] c"%s: no *.source files found in \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*)* @convert_sourcefiles_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_sourcefiles_in(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.stat, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca [1024 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %25 = load i32, i32* @MAXPGPATH, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %9, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  %29 = load i32, i32* @MAXPGPATH, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %11, align 8
  store i32 0, i32* %16, align 4
  %32 = load i32, i32* @MAXPGPATH, align 4
  %33 = load i8*, i8** @inputdir, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34)
  %36 = call i32 @stat(i8* %31, %struct.stat* %12)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %4
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @S_ISDIR(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39, %4
  store i32 1, i32* %17, align 4
  br label %178

45:                                               ; preds = %39
  %46 = call i8** @pgfnames(i8* %31)
  store i8** %46, i8*** %15, align 8
  %47 = load i8**, i8*** %15, align 8
  %48 = icmp ne i8** %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = call i32 @exit(i32 2) #4
  unreachable

51:                                               ; preds = %45
  %52 = load i32, i32* @MAXPGPATH, align 4
  %53 = load i8*, i8** @outputdir, align 8
  %54 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %28, i32 %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load i8**, i8*** %15, align 8
  store i8** %55, i8*** %14, align 8
  br label %56

56:                                               ; preds = %163, %51
  %57 = load i8**, i8*** %14, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %166

60:                                               ; preds = %56
  %61 = load i32, i32* @MAXPGPATH, align 4
  %62 = zext i32 %61 to i64
  %63 = call i8* @llvm.stacksave()
  store i8* %63, i8** %18, align 8
  %64 = alloca i8, i64 %62, align 16
  store i64 %62, i64* %19, align 8
  %65 = load i32, i32* @MAXPGPATH, align 4
  %66 = zext i32 %65 to i64
  %67 = alloca i8, i64 %66, align 16
  store i64 %66, i64* %20, align 8
  %68 = load i32, i32* @MAXPGPATH, align 4
  %69 = zext i32 %68 to i64
  %70 = alloca i8, i64 %69, align 16
  store i64 %69, i64* %21, align 8
  %71 = load i8**, i8*** %14, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = icmp slt i32 %73, 8
  br i1 %74, label %75, label %76

75:                                               ; preds = %60
  store i32 4, i32* %17, align 4
  br label %159

76:                                               ; preds = %60
  %77 = load i8**, i8*** %14, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = load i8**, i8*** %14, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %78, i64 %82
  %84 = getelementptr inbounds i8, i8* %83, i64 -7
  %85 = call i64 @strcmp(i8* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  store i32 4, i32* %17, align 4
  br label %159

88:                                               ; preds = %76
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %16, align 4
  %91 = load i8**, i8*** %14, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @strlen(i8* %92)
  %94 = sub nsw i32 %93, 6
  %95 = load i8**, i8*** %14, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %70, i32 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %96)
  %98 = load i32, i32* @MAXPGPATH, align 4
  %99 = load i8**, i8*** %14, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %64, i32 %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %100)
  %102 = load i32, i32* @MAXPGPATH, align 4
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %67, i32 %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %103, i8* %104, i8* %70, i8* %105)
  %107 = call i32* @fopen(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %107, i32** %22, align 8
  %108 = load i32*, i32** %22, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %118, label %110

110:                                              ; preds = %88
  %111 = load i32, i32* @stderr, align 4
  %112 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %113 = load i8*, i8** @progname, align 8
  %114 = load i32, i32* @errno, align 4
  %115 = call i8* @strerror(i32 %114)
  %116 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %111, i8* %112, i8* %113, i8* %64, i8* %115)
  %117 = call i32 @exit(i32 2) #4
  unreachable

118:                                              ; preds = %88
  %119 = call i32* @fopen(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %119, i32** %23, align 8
  %120 = load i32*, i32** %23, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %130, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* @stderr, align 4
  %124 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %125 = load i8*, i8** @progname, align 8
  %126 = load i32, i32* @errno, align 4
  %127 = call i8* @strerror(i32 %126)
  %128 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %123, i8* %124, i8* %125, i8* %67, i8* %127)
  %129 = call i32 @exit(i32 2) #4
  unreachable

130:                                              ; preds = %118
  br label %131

131:                                              ; preds = %136, %130
  %132 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %133 = load i32*, i32** %22, align 8
  %134 = call i64 @fgets(i8* %132, i32 1024, i32* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %154

136:                                              ; preds = %131
  %137 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %138 = load i8*, i8** @inputdir, align 8
  %139 = call i32 @replace_string(i8* %137, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %138)
  %140 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %141 = load i8*, i8** @outputdir, align 8
  %142 = call i32 @replace_string(i8* %140, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %141)
  %143 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %144 = call i32 @replace_string(i8* %143, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* %28)
  %145 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %146 = load i8*, i8** @dlpath, align 8
  %147 = call i32 @replace_string(i8* %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %146)
  %148 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %149 = load i8*, i8** @DLSUFFIX, align 8
  %150 = call i32 @replace_string(i8* %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %149)
  %151 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %152 = load i32*, i32** %23, align 8
  %153 = call i32 @fputs(i8* %151, i32* %152)
  br label %131

154:                                              ; preds = %131
  %155 = load i32*, i32** %22, align 8
  %156 = call i32 @fclose(i32* %155)
  %157 = load i32*, i32** %23, align 8
  %158 = call i32 @fclose(i32* %157)
  store i32 0, i32* %17, align 4
  br label %159

159:                                              ; preds = %154, %87, %75
  %160 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i32, i32* %17, align 4
  switch i32 %161, label %182 [
    i32 0, label %162
    i32 4, label %163
  ]

162:                                              ; preds = %159
  br label %163

163:                                              ; preds = %162, %159
  %164 = load i8**, i8*** %14, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i32 1
  store i8** %165, i8*** %14, align 8
  br label %56

166:                                              ; preds = %56
  %167 = load i32, i32* %16, align 4
  %168 = icmp sle i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = load i32, i32* @stderr, align 4
  %171 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  %172 = load i8*, i8** @progname, align 8
  %173 = call i32 (i32, i8*, i8*, i8*, ...) @fprintf(i32 %170, i8* %171, i8* %172, i8* %31)
  %174 = call i32 @exit(i32 2) #4
  unreachable

175:                                              ; preds = %166
  %176 = load i8**, i8*** %15, align 8
  %177 = call i32 @pgfnames_cleanup(i8** %176)
  store i32 0, i32* %17, align 4
  br label %178

178:                                              ; preds = %175, %44
  %179 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %179)
  %180 = load i32, i32* %17, align 4
  switch i32 %180, label %182 [
    i32 0, label %181
    i32 1, label %181
  ]

181:                                              ; preds = %178, %178
  ret void

182:                                              ; preds = %178, %159
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @S_ISDIR(i32) #2

declare dso_local i8** @pgfnames(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, ...) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @replace_string(i8*, i8*, i8*) #2

declare dso_local i32 @fputs(i8*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @pgfnames_cleanup(i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
