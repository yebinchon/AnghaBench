; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/uzlib/host/extr_uz_unzip.c_processOutRec.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/uzlib/host/extr_uz_unzip.c_processOutRec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32*, i32, i32, i32* }

@out = common dso_local global %struct.TYPE_2__* null, align 8
@WRITE_BLOCKSIZE = common dso_local global i32 0, align 4
@UZLIB_DATA_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @processOutRec() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @out, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = load i32, i32* @WRITE_BLOCKSIZE, align 4
  %6 = srem i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @out, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @WRITE_BLOCKSIZE, align 4
  %13 = srem i32 %11, %12
  br label %16

14:                                               ; preds = %0
  %15 = load i32, i32* @WRITE_BLOCKSIZE, align 4
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi i32 [ %13, %8 ], [ %15, %14 ]
  store i32 %17, i32* %1, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @out, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %1, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @out, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @fwrite(i32 %22, i32 1, i32 %23, i32 %26)
  %28 = load i32, i32* %1, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load i32, i32* @UZLIB_DATA_ERROR, align 4
  %32 = call i32 @UZLIB_THROW(i32 %31)
  br label %33

33:                                               ; preds = %30, %16
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @out, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 6
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %1, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @out, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @uzlib_crc32(i32 %38, i32 %39, i32 %42)
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @out, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @out, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %47
  store i64 %51, i64* %49, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @out, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @out, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %33
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @out, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @fclose(i32 %62)
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @out, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %59, %33
  ret i32 1
}

declare dso_local i32 @fwrite(i32, i32, i32, i32) #1

declare dso_local i32 @UZLIB_THROW(i32) #1

declare dso_local i32 @uzlib_crc32(i32, i32, i32) #1

declare dso_local i32 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
