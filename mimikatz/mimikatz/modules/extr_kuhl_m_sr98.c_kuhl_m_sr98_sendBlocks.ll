; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sr98.c_kuhl_m_sr98_sendBlocks.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sr98.c_kuhl_m_sr98_sendBlocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i32] [i32 32, i32 42, i32 32, i32 84, i32 53, i32 53, i32 55, i32 55, i32 32, i32 98, i32 108, i32 111, i32 99, i32 107, i32 115, i32 58, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [18 x i32] [i32 32, i32 32, i32 32, i32 91, i32 37, i32 104, i32 104, i32 117, i32 93, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [24 x i32] [i32 32, i32 42, i32 32, i32 87, i32 114, i32 105, i32 116, i32 101, i32 32, i32 111, i32 112, i32 101, i32 114, i32 97, i32 116, i32 105, i32 111, i32 110, i32 115, i32 46, i32 46, i32 46, i32 10, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i32] [i32 82, i32 101, i32 97, i32 100, i32 101, i32 114, i32 32, i32 100, i32 101, i32 118, i32 105, i32 99, i32 101, i32 32, i32 105, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 117, i32 110, i32 105, i32 113, i32 117, i32 101, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_sr98_sendBlocks(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %5, align 4
  %10 = call i64 @sr98_devices_get(%struct.TYPE_4__** %6, i32* %7)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %67

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %61

15:                                               ; preds = %12
  %16 = call i32 (i8*, ...) @kprintf(i8* bitcast ([18 x i32]* @.str to i8*))
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %28, %15
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i64, i64* %8, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @kprintf(i8* bitcast ([18 x i32]* @.str.1 to i8*), i64 %22, i32 %26)
  br label %28

28:                                               ; preds = %21
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %8, align 8
  br label %17

31:                                               ; preds = %17
  %32 = call i32 (i8*, ...) @kprintf(i8* bitcast ([24 x i32]* @.str.2 to i8*))
  store i64 0, i64* %8, align 8
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %57, %31
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %38, %34
  %42 = phi i1 [ false, %34 ], [ %40, %38 ]
  br i1 %42, label %43, label %60

43:                                               ; preds = %41
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %8, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @_byteswap_ulong(i32 %51)
  %53 = load i32, i32* @FALSE, align 4
  %54 = call i32 @sr98_t5577_write_block(i32 %46, i32 0, i64 %47, i32 %52, i32 %53, i32 0)
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %43
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %8, align 8
  br label %34

60:                                               ; preds = %41
  br label %64

61:                                               ; preds = %12
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @PRINT_ERROR(i8* bitcast ([34 x i32]* @.str.3 to i8*), i32 %62)
  br label %64

64:                                               ; preds = %61, %60
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = call i32 @sr98_devices_free(%struct.TYPE_4__* %65)
  br label %67

67:                                               ; preds = %64, %2
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @sr98_devices_get(%struct.TYPE_4__**, i32*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @sr98_t5577_write_block(i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @_byteswap_ulong(i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, i32) #1

declare dso_local i32 @sr98_devices_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
