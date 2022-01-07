; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_chm.c_OpenCHM.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_chm.c_OpenCHM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@OpenCHM.wszSTRINGS = internal constant [9 x i8] c"#STRINGS\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@CLSID_ITStorage = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IITStorage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Could not create ITStorage: %08x\0A\00", align 1
@STGM_READ = common dso_local global i32 0, align 4
@STGM_SHARE_DENY_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Could not open storage: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Could not open #STRINGS stream: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Could not read #SYSTEM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @OpenCHM(i32 %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call %struct.TYPE_8__* @heap_alloc_zero(i32 20)
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %5, align 8
  %7 = icmp ne %struct.TYPE_8__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %78

9:                                                ; preds = %1
  %10 = load i32, i32* @CP_ACP, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @strdupW(i32 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = icmp ne i32 %14, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %9
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = call i32 @heap_free(%struct.TYPE_8__* %19)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %78

21:                                               ; preds = %9
  %22 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = bitcast i32* %24 to i8**
  %26 = call i32 @CoCreateInstance(i32* @CLSID_ITStorage, i32* null, i32 %22, i32* @IID_IITStorage, i8** %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = call %struct.TYPE_8__* @CloseCHM(%struct.TYPE_8__* %33)
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %2, align 8
  br label %78

35:                                               ; preds = %21
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @STGM_READ, align 4
  %41 = load i32, i32* @STGM_SHARE_DENY_WRITE, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = call i32 @IITStorage_StgOpenStorage(i32 %38, i32 %39, i32* null, i32 %42, i32* null, i32 0, i32* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @FAILED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %35
  %50 = load i32, i32* %4, align 4
  %51 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = call %struct.TYPE_8__* @CloseCHM(%struct.TYPE_8__* %52)
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %2, align 8
  br label %78

54:                                               ; preds = %35
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @STGM_READ, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = call i32 @IStorage_OpenStream(i32 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @OpenCHM.wszSTRINGS, i64 0, i64 0), i32* null, i32 %58, i32 0, i32* %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i64 @FAILED(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load i32, i32* %4, align 4
  %67 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %65, %54
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = call i32 @ReadChmSystem(%struct.TYPE_8__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = call %struct.TYPE_8__* @CloseCHM(%struct.TYPE_8__* %74)
  store %struct.TYPE_8__* %75, %struct.TYPE_8__** %2, align 8
  br label %78

76:                                               ; preds = %68
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %2, align 8
  br label %78

78:                                               ; preds = %76, %72, %49, %30, %18, %8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %79
}

declare dso_local %struct.TYPE_8__* @heap_alloc_zero(i32) #1

declare dso_local i32 @strdupW(i32) #1

declare dso_local i32 @heap_free(%struct.TYPE_8__*) #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local %struct.TYPE_8__* @CloseCHM(%struct.TYPE_8__*) #1

declare dso_local i32 @IITStorage_StgOpenStorage(i32, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @IStorage_OpenStream(i32, i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @ReadChmSystem(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
