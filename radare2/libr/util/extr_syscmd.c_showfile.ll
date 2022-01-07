; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_syscmd.c_showfile.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_syscmd.c_showfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@needs_newline = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%18s%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\F0\9F\93\81\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\F0\9F\93\8E\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\F0\9F\8C\85\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\F0\9F\94\BC\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"\F0\9F\91\80\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c".gif\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@FMT_RAW = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [33 x i8] c"%c%s%s%s  1 %4d:%-4d  %-10d  %s\0A\00", align 1
@FMT_JSON = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.18 = private unnamed_addr constant [63 x i8] c"{\22name\22:\22%s\22,\22size\22:%d,\22uid\22:%d,\22gid\22:%d,\22perm\22:%d,\22isdir\22:%s}\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i8*, i8*, i32)* @showfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @showfile(i8* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %28 = load i8*, i8** %9, align 8
  store i8* %28, i8** %12, align 8
  store i8* null, i8** %14, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = call i32 @r_file_size(i8* %29)
  store i32 %30, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 45, i32* %19, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @strncmp(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %5
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  store i8* %36, i8** %9, align 8
  br label %37

37:                                               ; preds = %34, %5
  %38 = load i8*, i8** %12, align 8
  %39 = call i32 @r_file_is_directory(i8* %38)
  store i32 %39, i32* %20, align 4
  %40 = load i32, i32* %20, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i8*, i8** %9, align 8
  %44 = call i8* @strdup(i8* %43)
  %45 = call i8* @r_str_append(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %45, i8** %13, align 8
  br label %49

46:                                               ; preds = %37
  %47 = load i8*, i8** %9, align 8
  %48 = call i8* @strdup(i8* %47)
  store i8* %48, i8** %13, align 8
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i8*, i8** %13, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i8*, i8** %7, align 8
  store i8* %56, i8** %6, align 8
  br label %193

57:                                               ; preds = %49
  %58 = load i32, i32* %20, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 493, i32 420
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %81, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  %67 = srem i32 %66, 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  store i32 %70, i32* @needs_newline, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* @needs_newline, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %77 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %72, i8* %76)
  store i8* %77, i8** %7, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 @free(i8* %78)
  %80 = load i8*, i8** %7, align 8
  store i8* %80, i8** %6, align 8
  br label %193

81:                                               ; preds = %57
  %82 = call i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i8* %82, i8** %14, align 8
  %83 = load i32, i32* %20, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 100, i32 45
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp eq i32 %87, 113
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i8*, i8** %7, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %91)
  store i8* %92, i8** %7, align 8
  br label %187

93:                                               ; preds = %81
  %94 = load i32, i32* %11, align 4
  %95 = icmp eq i32 %94, 101
  br i1 %95, label %96, label %130

96:                                               ; preds = %93
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %21, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %22, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %23, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %24, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %25, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %26, align 8
  %97 = load i8*, i8** %26, align 8
  store i8* %97, i8** %27, align 8
  %98 = load i32, i32* %20, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i8*, i8** %21, align 8
  store i8* %101, i8** %27, align 8
  br label %125

102:                                              ; preds = %96
  %103 = load i8*, i8** %13, align 8
  %104 = call i64 @r_str_casestr(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %102
  %107 = load i8*, i8** %13, align 8
  %108 = call i64 @r_str_casestr(i8* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i8*, i8** %13, align 8
  %112 = call i64 @r_str_casestr(i8* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110, %106, %102
  %115 = load i8*, i8** %23, align 8
  store i8* %115, i8** %27, align 8
  br label %124

116:                                              ; preds = %110
  %117 = load i8*, i8** %13, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 46
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i8*, i8** %25, align 8
  store i8* %122, i8** %27, align 8
  br label %123

123:                                              ; preds = %121, %116
  br label %124

124:                                              ; preds = %123, %114
  br label %125

125:                                              ; preds = %124, %100
  %126 = load i8*, i8** %7, align 8
  %127 = load i8*, i8** %27, align 8
  %128 = load i8*, i8** %13, align 8
  %129 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8* %127, i8* %128)
  store i8* %129, i8** %7, align 8
  br label %186

130:                                              ; preds = %93
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @FMT_RAW, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %162

134:                                              ; preds = %130
  %135 = load i8*, i8** %7, align 8
  %136 = load i32, i32* %20, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %141

139:                                              ; preds = %134
  %140 = load i32, i32* %19, align 4
  br label %141

141:                                              ; preds = %139, %138
  %142 = phi i32 [ 100, %138 ], [ %140, %139 ]
  %143 = load i8*, i8** %14, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i8*, i8** %14, align 8
  br label %148

147:                                              ; preds = %141
  br label %148

148:                                              ; preds = %147, %145
  %149 = phi i8* [ %146, %145 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %147 ]
  %150 = load i32, i32* %16, align 4
  %151 = ashr i32 %150, 3
  %152 = and i32 %151, 7
  %153 = call i8* @r_str_rwx_i(i32 %152)
  %154 = load i32, i32* %16, align 4
  %155 = and i32 %154, 7
  %156 = call i8* @r_str_rwx_i(i32 %155)
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %15, align 4
  %160 = load i8*, i8** %13, align 8
  %161 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %135, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i32 %142, i8* %149, i8* %153, i8* %156, i32 %157, i32 %158, i32 %159, i8* %160)
  store i8* %161, i8** %7, align 8
  br label %185

162:                                              ; preds = %130
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @FMT_JSON, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %184

166:                                              ; preds = %162
  %167 = load i32, i32* %8, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i8*, i8** %7, align 8
  %171 = call i8* @r_str_append(i8* %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store i8* %171, i8** %7, align 8
  br label %172

172:                                              ; preds = %169, %166
  %173 = load i8*, i8** %7, align 8
  %174 = load i8*, i8** %10, align 8
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* %18, align 4
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %20, align 4
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)
  %183 = call i8* (i8*, i8*, ...) @r_str_appendf(i8* %173, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.18, i64 0, i64 0), i8* %174, i32 %175, i32 %176, i32 %177, i32 %178, i8* %182)
  store i8* %183, i8** %7, align 8
  br label %184

184:                                              ; preds = %172, %162
  br label %185

185:                                              ; preds = %184, %148
  br label %186

186:                                              ; preds = %185, %125
  br label %187

187:                                              ; preds = %186, %89
  %188 = load i8*, i8** %13, align 8
  %189 = call i32 @free(i8* %188)
  %190 = load i8*, i8** %14, align 8
  %191 = call i32 @free(i8* %190)
  %192 = load i8*, i8** %7, align 8
  store i8* %192, i8** %6, align 8
  br label %193

193:                                              ; preds = %187, %64, %53
  %194 = load i8*, i8** %6, align 8
  ret i8* %194
}

declare dso_local i32 @r_file_size(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @r_file_is_directory(i8*) #1

declare dso_local i8* @r_str_append(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @r_str_appendf(i8*, i8*, ...) #1

declare dso_local i64 @r_str_casestr(i8*, i8*) #1

declare dso_local i8* @r_str_rwx_i(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
