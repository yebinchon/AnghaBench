; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_IEND.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_IEND.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"in png_handle_IEND\0A\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"No image in file\00", align 1
@PNG_AFTER_IDAT = common dso_local global i32 0, align 4
@PNG_HAVE_IEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Incorrect IEND chunk length\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_IEND(%struct.TYPE_6__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14, %3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = call i32 @png_error(%struct.TYPE_6__* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %14
  %25 = load i32, i32* @PNG_AFTER_IDAT, align 4
  %26 = load i32, i32* @PNG_HAVE_IEND, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = call i32 @png_warning(%struct.TYPE_6__* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %24
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @png_crc_finish(%struct.TYPE_6__* %38, i64 %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %5, align 4
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_error(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @png_warning(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @png_crc_finish(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
