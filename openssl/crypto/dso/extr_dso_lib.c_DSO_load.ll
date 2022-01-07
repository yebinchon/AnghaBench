; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dso/extr_dso_lib.c_DSO_load.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dso/extr_dso_lib.c_DSO_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*)* }

@DSO_F_DSO_LOAD = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@DSO_CTRL_SET_FLAGS = common dso_local global i32 0, align 4
@DSO_R_CTRL_FAILED = common dso_local global i32 0, align 4
@DSO_R_DSO_ALREADY_LOADED = common dso_local global i32 0, align 4
@DSO_R_SET_FILENAME_FAILED = common dso_local global i32 0, align 4
@DSO_R_NO_FILENAME = common dso_local global i32 0, align 4
@DSO_R_UNSUPPORTED = common dso_local global i32 0, align 4
@DSO_R_LOAD_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @DSO_load(%struct.TYPE_11__* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %13 = icmp eq %struct.TYPE_11__* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  %16 = call %struct.TYPE_11__* @DSO_new_method(i32* %15)
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %10, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %18 = icmp eq %struct.TYPE_11__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* @DSO_F_DSO_LOAD, align 4
  %21 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %22 = call i32 @DSOerr(i32 %20, i32 %21)
  br label %94

23:                                               ; preds = %14
  store i32 1, i32* %11, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %25 = load i32, i32* @DSO_CTRL_SET_FLAGS, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @DSO_ctrl(%struct.TYPE_11__* %24, i32 %25, i32 %26, i32* null)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @DSO_F_DSO_LOAD, align 4
  %31 = load i32, i32* @DSO_R_CTRL_FAILED, align 4
  %32 = call i32 @DSOerr(i32 %30, i32 %31)
  br label %94

33:                                               ; preds = %23
  br label %36

34:                                               ; preds = %4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %10, align 8
  br label %36

36:                                               ; preds = %34, %33
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @DSO_F_DSO_LOAD, align 4
  %43 = load i32, i32* @DSO_R_DSO_ALREADY_LOADED, align 4
  %44 = call i32 @DSOerr(i32 %42, i32 %43)
  br label %94

45:                                               ; preds = %36
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @DSO_set_filename(%struct.TYPE_11__* %49, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @DSO_F_DSO_LOAD, align 4
  %55 = load i32, i32* @DSO_R_SET_FILENAME_FAILED, align 4
  %56 = call i32 @DSOerr(i32 %54, i32 %55)
  br label %94

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %45
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @DSO_F_DSO_LOAD, align 4
  %66 = load i32, i32* @DSO_R_NO_FILENAME, align 4
  %67 = call i32 @DSOerr(i32 %65, i32 %66)
  br label %94

68:                                               ; preds = %58
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %72, align 8
  %74 = icmp eq i32 (%struct.TYPE_11__*)* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32, i32* @DSO_F_DSO_LOAD, align 4
  %77 = load i32, i32* @DSO_R_UNSUPPORTED, align 4
  %78 = call i32 @DSOerr(i32 %76, i32 %77)
  br label %94

79:                                               ; preds = %68
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %83, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %86 = call i32 %84(%struct.TYPE_11__* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %79
  %89 = load i32, i32* @DSO_F_DSO_LOAD, align 4
  %90 = load i32, i32* @DSO_R_LOAD_FAILED, align 4
  %91 = call i32 @DSOerr(i32 %89, i32 %90)
  br label %94

92:                                               ; preds = %79
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %93, %struct.TYPE_11__** %5, align 8
  br label %101

94:                                               ; preds = %88, %75, %64, %53, %41, %29, %19
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %99 = call i32 @DSO_free(%struct.TYPE_11__* %98)
  br label %100

100:                                              ; preds = %97, %94
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %101

101:                                              ; preds = %100, %92
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %102
}

declare dso_local %struct.TYPE_11__* @DSO_new_method(i32*) #1

declare dso_local i32 @DSOerr(i32, i32) #1

declare dso_local i64 @DSO_ctrl(%struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i32 @DSO_set_filename(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @DSO_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
