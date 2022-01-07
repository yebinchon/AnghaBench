; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_chm.c_FindContextAlias.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hhctrl.ocx/extr_chm.c_FindContextAlias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FindContextAlias.wszIVB = internal constant [5 x i8] c"#IVB\00", align 1
@STGM_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Could not open #IVB stream: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Read failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"returning %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @FindContextAlias(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %11, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @STGM_READ, align 4
  %17 = call i32 @IStorage_OpenStream(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @FindContextAlias.wszIVB, i64 0, i64 0), i32* null, i32 %16, i32 0, i32** %6)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i64 @FAILED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32* null, i32** %3, align 8
  br label %92

24:                                               ; preds = %2
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @IStream_Read(i32* %25, i32* %7, i32 4, i32* %8)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i64 @FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @IStream_Release(i32* %33)
  store i32* null, i32** %3, align 8
  br label %92

35:                                               ; preds = %24
  %36 = load i32, i32* %7, align 4
  %37 = call i32* @heap_alloc(i32 %36)
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @IStream_Read(i32* %38, i32* %39, i32 %40, i32* %8)
  store i32 %41, i32* %12, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @IStream_Release(i32* %42)
  %44 = load i32, i32* %12, align 4
  %45 = call i64 @FAILED(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @heap_free(i32* %50)
  store i32* null, i32** %3, align 8
  br label %92

52:                                               ; preds = %35
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = udiv i64 %54, 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %81, %52
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %57
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %9, align 4
  %64 = mul nsw i32 2, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %61
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %9, align 4
  %74 = mul nsw i32 2, %73
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32* @GetChmString(%struct.TYPE_4__* %71, i32 %78)
  store i32* %79, i32** %11, align 8
  br label %84

80:                                               ; preds = %61
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %57

84:                                               ; preds = %70, %57
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @heap_free(i32* %85)
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @debugstr_a(i32* %87)
  %89 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i32*, i32** %11, align 8
  %91 = call i32* @strdupAtoW(i32* %90)
  store i32* %91, i32** %3, align 8
  br label %92

92:                                               ; preds = %84, %47, %30, %21
  %93 = load i32*, i32** %3, align 8
  ret i32* %93
}

declare dso_local i32 @IStorage_OpenStream(i32, i8*, i32*, i32, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @IStream_Read(i32*, i32*, i32, i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32* @GetChmString(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_a(i32*) #1

declare dso_local i32* @strdupAtoW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
