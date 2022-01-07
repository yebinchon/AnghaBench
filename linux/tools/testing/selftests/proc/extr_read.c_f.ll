; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_read.c_f.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_read.c_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"sysrq-trigger\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"clear_refs\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@O_DIRECTORY = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.dirent* @xreaddir(i32* %8)
  store %struct.dirent* %9, %struct.dirent** %5, align 8
  %10 = load %struct.dirent*, %struct.dirent** %5, align 8
  %11 = getelementptr inbounds %struct.dirent, %struct.dirent* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 130
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.dirent*, %struct.dirent** %5, align 8
  %17 = getelementptr inbounds %struct.dirent, %struct.dirent* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @streq(i32 %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @assert(i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call %struct.dirent* @xreaddir(i32* %21)
  store %struct.dirent* %22, %struct.dirent** %5, align 8
  %23 = load %struct.dirent*, %struct.dirent** %5, align 8
  %24 = getelementptr inbounds %struct.dirent, %struct.dirent* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 130
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.dirent*, %struct.dirent** %5, align 8
  %30 = getelementptr inbounds %struct.dirent, %struct.dirent* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @streq(i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @assert(i32 %32)
  br label %34

34:                                               ; preds = %145, %130, %124, %2
  %35 = load i32*, i32** %3, align 8
  %36 = call %struct.dirent* @xreaddir(i32* %35)
  store %struct.dirent* %36, %struct.dirent** %5, align 8
  %37 = icmp ne %struct.dirent* %36, null
  br i1 %37, label %38, label %146

38:                                               ; preds = %34
  %39 = load %struct.dirent*, %struct.dirent** %5, align 8
  %40 = getelementptr inbounds %struct.dirent, %struct.dirent* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @streq(i32 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.dirent*, %struct.dirent** %5, align 8
  %48 = getelementptr inbounds %struct.dirent, %struct.dirent* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @streq(i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.dirent*, %struct.dirent** %5, align 8
  %56 = getelementptr inbounds %struct.dirent, %struct.dirent* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %143 [
    i32 128, label %58
    i32 130, label %112
    i32 129, label %137
  ]

58:                                               ; preds = %38
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load %struct.dirent*, %struct.dirent** %5, align 8
  %63 = getelementptr inbounds %struct.dirent, %struct.dirent* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @streq(i32 %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i32*, i32** %3, align 8
  %69 = load %struct.dirent*, %struct.dirent** %5, align 8
  %70 = getelementptr inbounds %struct.dirent, %struct.dirent* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @f_reg_write(i32* %68, i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  br label %111

73:                                               ; preds = %61, %58
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load %struct.dirent*, %struct.dirent** %5, align 8
  %78 = getelementptr inbounds %struct.dirent, %struct.dirent* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @streq(i32 %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i32*, i32** %3, align 8
  %84 = load %struct.dirent*, %struct.dirent** %5, align 8
  %85 = getelementptr inbounds %struct.dirent, %struct.dirent* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @f_reg_write(i32* %83, i32 %86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  br label %110

88:                                               ; preds = %76, %73
  %89 = load i32, i32* %4, align 4
  %90 = icmp eq i32 %89, 3
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load %struct.dirent*, %struct.dirent** %5, align 8
  %93 = getelementptr inbounds %struct.dirent, %struct.dirent* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @streq(i32 %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i32*, i32** %3, align 8
  %99 = load %struct.dirent*, %struct.dirent** %5, align 8
  %100 = getelementptr inbounds %struct.dirent, %struct.dirent* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @f_reg_write(i32* %98, i32 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  br label %109

103:                                              ; preds = %91, %88
  %104 = load i32*, i32** %3, align 8
  %105 = load %struct.dirent*, %struct.dirent** %5, align 8
  %106 = getelementptr inbounds %struct.dirent, %struct.dirent* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @f_reg(i32* %104, i32 %107)
  br label %109

109:                                              ; preds = %103, %97
  br label %110

110:                                              ; preds = %109, %82
  br label %111

111:                                              ; preds = %110, %67
  br label %145

112:                                              ; preds = %38
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 @dirfd(i32* %113)
  %115 = load %struct.dirent*, %struct.dirent** %5, align 8
  %116 = getelementptr inbounds %struct.dirent, %struct.dirent* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @O_DIRECTORY, align 4
  %119 = load i32, i32* @O_RDONLY, align 4
  %120 = or i32 %118, %119
  %121 = call i32 @openat(i32 %114, i32 %117, i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  br label %34

125:                                              ; preds = %112
  %126 = load i32, i32* %7, align 4
  %127 = call i32* @fdopendir(i32 %126)
  store i32* %127, i32** %6, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %125
  br label %34

131:                                              ; preds = %125
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %4, align 4
  %134 = add i32 %133, 1
  call void @f(i32* %132, i32 %134)
  %135 = load i32*, i32** %6, align 8
  %136 = call i32 @closedir(i32* %135)
  br label %145

137:                                              ; preds = %38
  %138 = load i32*, i32** %3, align 8
  %139 = load %struct.dirent*, %struct.dirent** %5, align 8
  %140 = getelementptr inbounds %struct.dirent, %struct.dirent* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @f_lnk(i32* %138, i32 %141)
  br label %145

143:                                              ; preds = %38
  %144 = call i32 @assert(i32 0)
  br label %145

145:                                              ; preds = %143, %137, %131, %111
  br label %34

146:                                              ; preds = %34
  ret void
}

declare dso_local %struct.dirent* @xreaddir(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @streq(i32, i8*) #1

declare dso_local i32 @f_reg_write(i32*, i32, i8*, i32) #1

declare dso_local i32 @f_reg(i32*, i32) #1

declare dso_local i32 @openat(i32, i32, i32) #1

declare dso_local i32 @dirfd(i32*) #1

declare dso_local i32* @fdopendir(i32) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @f_lnk(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
