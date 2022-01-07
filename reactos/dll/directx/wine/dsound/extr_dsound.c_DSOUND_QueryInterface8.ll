; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_dsound.c_DSOUND_QueryInterface8.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_dsound.c_DSOUND_QueryInterface8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [12 x i8] c"(%p,%s,%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid parameter\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"IDirectSound8_IUnknown_Create() failed\0A\00", align 1
@E_NOINTERFACE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@IID_IDirectSound = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"IDirectSound8_IDirectSound_Create() failed\0A\00", align 1
@IID_IDirectSound8 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"IDirectSound8_IDirectSound8_Create() failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Unknown IID %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32**)* @DSOUND_QueryInterface8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DSOUND_QueryInterface8(i64 %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %8, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @debugstr_guid(i32 %12)
  %14 = load i32**, i32*** %7, align 8
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %11, i32 %13, i32** %14)
  %16 = load i32**, i32*** %7, align 8
  %17 = icmp eq i32** %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %20, i32* %4, align 4
  br label %128

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @IsEqualIID(i32 %22, i32* @IID_IUnknown)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %21
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = call i32 @IDirectSound8_IUnknown_Create(i64 %31, i32** %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %30
  %40 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32**, i32*** %7, align 8
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %42, i32* %4, align 4
  br label %128

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %25
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @IDirectSound8_IUnknown_AddRef(i32* %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32**, i32*** %7, align 8
  store i32* %51, i32** %52, align 8
  %53 = load i32, i32* @S_OK, align 4
  store i32 %53, i32* %4, align 4
  br label %128

54:                                               ; preds = %21
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @IsEqualIID(i32 %55, i32* @IID_IDirectSound)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %54
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %77, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = call i32 @IDirectSound8_IDirectSound_Create(i64 %64, i32** %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %63
  %73 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32**, i32*** %7, align 8
  store i32* null, i32** %74, align 8
  %75 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %75, i32* %4, align 4
  br label %128

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76, %58
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @IDirectSound8_IDirectSound_AddRef(i32* %80)
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32**, i32*** %7, align 8
  store i32* %84, i32** %85, align 8
  %86 = load i32, i32* @S_OK, align 4
  store i32 %86, i32* %4, align 4
  br label %128

87:                                               ; preds = %54
  %88 = load i32, i32* %6, align 4
  %89 = call i64 @IsEqualIID(i32 %88, i32* @IID_IDirectSound8)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %120

91:                                               ; preds = %87
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %110, label %96

96:                                               ; preds = %91
  %97 = load i64, i64* %5, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = call i32 @IDirectSound8_IDirectSound8_Create(i64 %97, i32** %99)
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %96
  %106 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %107 = load i32**, i32*** %7, align 8
  store i32* null, i32** %107, align 8
  %108 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %108, i32* %4, align 4
  br label %128

109:                                              ; preds = %96
  br label %110

110:                                              ; preds = %109, %91
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @IDirectSound8_IDirectSound8_AddRef(i32* %113)
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32**, i32*** %7, align 8
  store i32* %117, i32** %118, align 8
  %119 = load i32, i32* @S_OK, align 4
  store i32 %119, i32* %4, align 4
  br label %128

120:                                              ; preds = %87
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121
  %123 = load i32**, i32*** %7, align 8
  store i32* null, i32** %123, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @debugstr_guid(i32 %124)
  %126 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @E_NOINTERFACE, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %122, %110, %105, %77, %72, %44, %39, %18
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_3__*, i32, i32**) #1

declare dso_local i32 @debugstr_guid(i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i64 @IsEqualIID(i32, i32*) #1

declare dso_local i32 @IDirectSound8_IUnknown_Create(i64, i32**) #1

declare dso_local i32 @IDirectSound8_IUnknown_AddRef(i32*) #1

declare dso_local i32 @IDirectSound8_IDirectSound_Create(i64, i32**) #1

declare dso_local i32 @IDirectSound8_IDirectSound_AddRef(i32*) #1

declare dso_local i32 @IDirectSound8_IDirectSound8_Create(i64, i32**) #1

declare dso_local i32 @IDirectSound8_IDirectSound8_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
