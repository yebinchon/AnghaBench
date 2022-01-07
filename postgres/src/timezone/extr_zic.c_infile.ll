; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_infile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_infile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lookup = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"%s: Cannot open %s: %s\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"line too long\00", align 1
@infile.nada = internal global i8 0, align 1
@leapsec = common dso_local global i8* null, align 8
@leap_line_codes = common dso_local global %struct.lookup* null, align 8
@zi_line_codes = common dso_local global %struct.lookup* null, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"input line of unknown type\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"%s: panic: Invalid l_value %d\0A\00", align 1
@filename = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"expected continuation line not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @infile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @infile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lookup*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.lookup*, align 8
  store i8* %0, i8** %2, align 8
  %14 = load i32, i32* @BUFSIZ, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i8* %22, i8** %2, align 8
  %23 = load i32*, i32** @stdin, align 8
  store i32* %23, i32** %3, align 8
  br label %40

24:                                               ; preds = %1
  %25 = load i8*, i8** %2, align 8
  %26 = call i32* @fopen(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %26, i32** %3, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i32, i32* @errno, align 4
  %30 = call i8* @strerror(i32 %29)
  store i8* %30, i8** %12, align 8
  %31 = load i32, i32* @stderr, align 4
  %32 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i8*, i8** @progname, align 8
  %34 = load i8*, i8** %2, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %31, i8* %32, i8* %33, i8* %34, i8* %35)
  %37 = load i32, i32* @EXIT_FAILURE, align 4
  %38 = call i32 @exit(i32 %37) #4
  unreachable

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %21
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %152, %40
  %42 = load i8*, i8** %2, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @eat(i8* %42, i32 %43)
  %45 = trunc i64 %15 to i32
  %46 = load i32*, i32** %3, align 8
  %47 = call i8* @fgets(i8* %17, i32 %45, i32* %46)
  %48 = icmp ne i8* %47, %17
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %155

50:                                               ; preds = %41
  %51 = call i8* @strchr(i8* %17, i8 signext 10)
  store i8* %51, i8** %5, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %56 = call i32 @error(i8* %55)
  %57 = load i32, i32* @EXIT_FAILURE, align 4
  %58 = call i32 @exit(i32 %57) #4
  unreachable

59:                                               ; preds = %50
  %60 = load i8*, i8** %5, align 8
  store i8 0, i8* %60, align 1
  %61 = call i8** @getfields(i8* %17)
  store i8** %61, i8*** %4, align 8
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %82, %59
  %63 = load i8**, i8*** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %85

69:                                               ; preds = %62
  %70 = load i8**, i8*** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load i8**, i8*** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  store i8* @infile.nada, i8** %81, align 8
  br label %82

82:                                               ; preds = %77, %69
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %62

85:                                               ; preds = %62
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %149

89:                                               ; preds = %85
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i8**, i8*** %4, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @inzcont(i8** %93, i32 %94)
  store i32 %95, i32* %8, align 4
  br label %148

96:                                               ; preds = %89
  %97 = load i8*, i8** %2, align 8
  %98 = load i8*, i8** @leapsec, align 8
  %99 = icmp eq i8* %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load %struct.lookup*, %struct.lookup** @leap_line_codes, align 8
  br label %104

102:                                              ; preds = %96
  %103 = load %struct.lookup*, %struct.lookup** @zi_line_codes, align 8
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi %struct.lookup* [ %101, %100 ], [ %103, %102 ]
  store %struct.lookup* %105, %struct.lookup** %13, align 8
  %106 = load i8**, i8*** %4, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 0
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.lookup*, %struct.lookup** %13, align 8
  %110 = call %struct.lookup* @byword(i8* %108, %struct.lookup* %109)
  store %struct.lookup* %110, %struct.lookup** %6, align 8
  %111 = load %struct.lookup*, %struct.lookup** %6, align 8
  %112 = icmp eq %struct.lookup* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %104
  %114 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %115 = call i32 @error(i8* %114)
  br label %147

116:                                              ; preds = %104
  %117 = load %struct.lookup*, %struct.lookup** %6, align 8
  %118 = getelementptr inbounds %struct.lookup, %struct.lookup* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  switch i32 %119, label %136 [
    i32 129, label %120
    i32 128, label %124
    i32 130, label %128
    i32 131, label %132
  ]

120:                                              ; preds = %116
  %121 = load i8**, i8*** %4, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @inrule(i8** %121, i32 %122)
  store i32 0, i32* %8, align 4
  br label %146

124:                                              ; preds = %116
  %125 = load i8**, i8*** %4, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @inzone(i8** %125, i32 %126)
  store i32 %127, i32* %8, align 4
  br label %146

128:                                              ; preds = %116
  %129 = load i8**, i8*** %4, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @inlink(i8** %129, i32 %130)
  store i32 0, i32* %8, align 4
  br label %146

132:                                              ; preds = %116
  %133 = load i8**, i8*** %4, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @inleap(i8** %133, i32 %134)
  store i32 0, i32* %8, align 4
  br label %146

136:                                              ; preds = %116
  %137 = load i32, i32* @stderr, align 4
  %138 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %139 = load i8*, i8** @progname, align 8
  %140 = load %struct.lookup*, %struct.lookup** %6, align 8
  %141 = getelementptr inbounds %struct.lookup, %struct.lookup* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %137, i8* %138, i8* %139, i32 %142)
  %144 = load i32, i32* @EXIT_FAILURE, align 4
  %145 = call i32 @exit(i32 %144) #4
  unreachable

146:                                              ; preds = %132, %128, %124, %120
  br label %147

147:                                              ; preds = %146, %113
  br label %148

148:                                              ; preds = %147, %92
  br label %149

149:                                              ; preds = %148, %88
  %150 = load i8**, i8*** %4, align 8
  %151 = call i32 @free(i8** %150)
  br label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %41

155:                                              ; preds = %49
  %156 = load i32*, i32** %3, align 8
  %157 = load i32, i32* @filename, align 4
  %158 = call i32 @close_file(i32* %156, i32* null, i32 %157)
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %163 = call i32 @error(i8* %162)
  br label %164

164:                                              ; preds = %161, %155
  %165 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %165)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @eat(i8*, i32) #2

declare dso_local i8* @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @error(i8*) #2

declare dso_local i8** @getfields(i8*) #2

declare dso_local i32 @inzcont(i8**, i32) #2

declare dso_local %struct.lookup* @byword(i8*, %struct.lookup*) #2

declare dso_local i32 @inrule(i8**, i32) #2

declare dso_local i32 @inzone(i8**, i32) #2

declare dso_local i32 @inlink(i8**, i32) #2

declare dso_local i32 @inleap(i8**, i32) #2

declare dso_local i32 @free(i8**) #2

declare dso_local i32 @close_file(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
