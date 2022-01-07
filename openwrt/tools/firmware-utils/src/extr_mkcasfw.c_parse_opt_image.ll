; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcasfw.c_parse_opt_image.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcasfw.c_parse_opt_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_desc = type { i32* }

@MAX_ARG_LEN = common dso_local global i32 0, align 4
@MAX_ARG_COUNT = common dso_local global i32 0, align 4
@kernel_image = common dso_local global %struct.image_desc zeroinitializer, align 8
@.str = private unnamed_addr constant [31 x i8] c"only one kernel option allowed\00", align 1
@fs_image = common dso_local global %struct.image_desc zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"only one fs option allowed\00", align 1
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"no file specified for option %c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_opt_image(i8 signext %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.image_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  %14 = load i32, i32* @MAX_ARG_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @MAX_ARG_COUNT, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8*, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  store %struct.image_desc* null, %struct.image_desc** %11, align 8
  %21 = load i8, i8* %4, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %35 [
    i32 75, label %23
    i32 70, label %29
  ]

23:                                               ; preds = %2
  %24 = load i32*, i32** getelementptr inbounds (%struct.image_desc, %struct.image_desc* @kernel_image, i32 0, i32 0), align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %35

28:                                               ; preds = %23
  store %struct.image_desc* @kernel_image, %struct.image_desc** %11, align 8
  br label %35

29:                                               ; preds = %2
  %30 = load i32*, i32** getelementptr inbounds (%struct.image_desc, %struct.image_desc* @fs_image, i32 0, i32 0), align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %35

34:                                               ; preds = %29
  store %struct.image_desc* @fs_image, %struct.image_desc** %11, align 8
  br label %35

35:                                               ; preds = %2, %34, %32, %28, %26
  %36 = load %struct.image_desc*, %struct.image_desc** %11, align 8
  %37 = icmp ne %struct.image_desc* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @ERR_FATAL, align 4
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %70

40:                                               ; preds = %35
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @parse_arg(i8* %41, i8* %17, i8** %20)
  store i32 %42, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8*, i8** %20, i64 %45
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @is_empty_arg(i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %40
  %52 = load i8*, i8** %10, align 8
  %53 = call i32* @strdup(i8* %52)
  %54 = load %struct.image_desc*, %struct.image_desc** %11, align 8
  %55 = getelementptr inbounds %struct.image_desc, %struct.image_desc* %54, i32 0, i32 0
  store i32* %53, i32** %55, align 8
  %56 = load %struct.image_desc*, %struct.image_desc** %11, align 8
  %57 = getelementptr inbounds %struct.image_desc, %struct.image_desc* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @ERR_FATAL, align 4
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %70

63:                                               ; preds = %51
  br label %69

64:                                               ; preds = %40
  %65 = load i8, i8* %4, align 1
  %66 = sext i8 %65 to i32
  %67 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @ERR_FATAL, align 4
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %70

69:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %70

70:                                               ; preds = %69, %64, %60, %38
  %71 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %71)
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @WARN(i8*) #2

declare dso_local i32 @parse_arg(i8*, i8*, i8**) #2

declare dso_local i32 @is_empty_arg(i8*) #2

declare dso_local i32* @strdup(i8*) #2

declare dso_local i32 @ERR(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
