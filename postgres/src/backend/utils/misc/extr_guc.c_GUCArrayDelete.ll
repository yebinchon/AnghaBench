; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_GUCArrayDelete.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_GUCArrayDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { i8* }

@WARNING = common dso_local global i32 0, align 4
@TEXTOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GUCArrayDelete(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.config_generic*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @Assert(i8* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @validate_option_array_item(i8* %15, i32* null, i32 0)
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @WARNING, align 4
  %19 = call %struct.config_generic* @find_option(i8* %17, i32 0, i32 %18)
  store %struct.config_generic* %19, %struct.config_generic** %6, align 8
  %20 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %21 = icmp ne %struct.config_generic* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.config_generic*, %struct.config_generic** %6, align 8
  %24 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %5, align 8
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32*, i32** %4, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32* null, i32** %3, align 8
  br label %80

30:                                               ; preds = %26
  store i32* null, i32** %7, align 8
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %31

31:                                               ; preds = %75, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = call i32* @ARR_DIMS(i32* %33)
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %32, %36
  br i1 %37, label %38, label %78

38:                                               ; preds = %31
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @array_ref(i32* %39, i32 1, i32* %8, i32 -1, i32 -1, i32 0, i8 signext 105, i32* %12)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %75

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  %46 = call i8* @TextDatumGetCString(i32 %45)
  store i8* %46, i8** %11, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i64 @strlen(i8* %49)
  %51 = call i64 @strncmp(i8* %47, i8* %48, i64 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %44
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i64 @strlen(i8* %55)
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 61
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %75

62:                                               ; preds = %53, %44
  %63 = load i32*, i32** %7, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32* @array_set(i32* %66, i32 1, i32* %9, i32 %67, i32 0, i32 -1, i32 -1, i32 0, i8 signext 105)
  store i32* %68, i32** %7, align 8
  br label %72

69:                                               ; preds = %62
  %70 = load i32, i32* @TEXTOID, align 4
  %71 = call i32* @construct_array(i32* %10, i32 1, i32 %70, i32 -1, i32 0, i8 signext 105)
  store i32* %71, i32** %7, align 8
  br label %72

72:                                               ; preds = %69, %65
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %72, %61, %43
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %31

78:                                               ; preds = %31
  %79 = load i32*, i32** %7, align 8
  store i32* %79, i32** %3, align 8
  br label %80

80:                                               ; preds = %78, %29
  %81 = load i32*, i32** %3, align 8
  ret i32* %81
}

declare dso_local i32 @Assert(i8*) #1

declare dso_local i32 @validate_option_array_item(i8*, i32*, i32) #1

declare dso_local %struct.config_generic* @find_option(i8*, i32, i32) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32 @array_ref(i32*, i32, i32*, i32, i32, i32, i8 signext, i32*) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @array_set(i32*, i32, i32*, i32, i32, i32, i32, i32, i8 signext) #1

declare dso_local i32* @construct_array(i32*, i32, i32, i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
