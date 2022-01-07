; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_taskdialog.c_taskdialog_add_control.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_taskdialog.c_taskdialog_add_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskdialog_template_desc = type { i32, i32 }
%struct.taskdialog_control = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i16, i16, i16, i16, i32, i64 }

@taskdialog_add_control.nulW = internal constant i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.taskdialog_template_desc*, i32, i32*, i32, i32*, i32, i16, i16, i16, i16)* @taskdialog_add_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @taskdialog_add_control(%struct.taskdialog_template_desc* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i16 signext %6, i16 signext %7, i16 signext %8, i16 signext %9) #0 {
  %11 = alloca %struct.taskdialog_template_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca %struct.taskdialog_control*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_2__*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  store %struct.taskdialog_template_desc* %0, %struct.taskdialog_template_desc** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i16 %6, i16* %17, align 2
  store i16 %7, i16* %18, align 2
  store i16 %8, i16* %19, align 2
  store i16 %9, i16* %20, align 2
  %28 = call i8* @Alloc(i32 16)
  %29 = bitcast i8* %28 to %struct.taskdialog_control*
  store %struct.taskdialog_control* %29, %struct.taskdialog_control** %21, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = call i32 @strlenW(i32* %30)
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %23, align 4
  %36 = load i32*, i32** %15, align 8
  %37 = call i64 @IS_INTRESOURCE(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %10
  %40 = load i32, i32* %14, align 4
  %41 = load i32*, i32** %15, align 8
  %42 = ptrtoint i32* %41 to i32
  %43 = bitcast i32** %26 to i32*
  %44 = call i32 @LoadStringW(i32 %40, i32 %42, i32* %43, i32 0)
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %24, align 4
  br label %55

48:                                               ; preds = %10
  %49 = load i32*, i32** %15, align 8
  store i32* %49, i32** %26, align 8
  %50 = load i32*, i32** %26, align 8
  %51 = call i32 @strlenW(i32* %50)
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %24, align 4
  br label %55

55:                                               ; preds = %48, %39
  store i32 24, i32* %22, align 4
  %56 = load i32, i32* %23, align 4
  %57 = load i32, i32* %22, align 4
  %58 = add i32 %57, %56
  store i32 %58, i32* %22, align 4
  %59 = load i32, i32* %24, align 4
  %60 = zext i32 %59 to i64
  %61 = add i64 %60, 4
  %62 = load i32, i32* %22, align 4
  %63 = zext i32 %62 to i64
  %64 = add i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %22, align 4
  %66 = load i32, i32* %22, align 4
  %67 = zext i32 %66 to i64
  %68 = add i64 %67, 4
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %22, align 4
  %70 = load i32, i32* %22, align 4
  %71 = call i8* @Alloc(i32 %70)
  %72 = bitcast i8* %71 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %72, %struct.TYPE_2__** %25, align 8
  %73 = load %struct.taskdialog_control*, %struct.taskdialog_control** %21, align 8
  %74 = getelementptr inbounds %struct.taskdialog_control, %struct.taskdialog_control* %73, i32 0, i32 2
  store %struct.TYPE_2__* %72, %struct.TYPE_2__** %74, align 8
  %75 = load i32, i32* %22, align 4
  %76 = load %struct.taskdialog_control*, %struct.taskdialog_control** %21, align 8
  %77 = getelementptr inbounds %struct.taskdialog_control, %struct.taskdialog_control* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @WS_VISIBLE, align 4
  %79 = load i32, i32* %16, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 6
  store i64 0, i64* %84, align 8
  %85 = load i16, i16* %17, align 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i16 %85, i16* %87, align 4
  %88 = load i16, i16* %18, align 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  store i16 %88, i16* %90, align 2
  %91 = load i16, i16* %19, align 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  store i16 %91, i16* %93, align 8
  %94 = load i16, i16* %20, align 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 4
  store i16 %94, i16* %96, align 2
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 1
  %102 = bitcast %struct.TYPE_2__* %101 to i8*
  store i8* %102, i8** %27, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = load i32, i32* %23, align 4
  %105 = call i32 @template_write_data(i8** %27, i32* %103, i32 %104)
  %106 = load i32*, i32** %26, align 8
  %107 = load i32, i32* %24, align 4
  %108 = call i32 @template_write_data(i8** %27, i32* %106, i32 %107)
  %109 = call i32 @template_write_data(i8** %27, i32* @taskdialog_add_control.nulW, i32 4)
  %110 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %11, align 8
  %111 = getelementptr inbounds %struct.taskdialog_template_desc, %struct.taskdialog_template_desc* %110, i32 0, i32 1
  %112 = load %struct.taskdialog_control*, %struct.taskdialog_control** %21, align 8
  %113 = getelementptr inbounds %struct.taskdialog_control, %struct.taskdialog_control* %112, i32 0, i32 1
  %114 = call i32 @list_add_tail(i32* %111, i32* %113)
  %115 = load %struct.taskdialog_template_desc*, %struct.taskdialog_template_desc** %11, align 8
  %116 = getelementptr inbounds %struct.taskdialog_template_desc, %struct.taskdialog_template_desc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* %22, align 4
  %120 = call i32 @ALIGNED_LENGTH(i32 %119, i32 3)
  ret i32 %120
}

declare dso_local i8* @Alloc(i32) #1

declare dso_local i32 @strlenW(i32*) #1

declare dso_local i64 @IS_INTRESOURCE(i32*) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @template_write_data(i8**, i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ALIGNED_LENGTH(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
