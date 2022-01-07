; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/rpc/extr_kull_m_rpc_drsr.c_kull_m_rpc_drsr_MakeAttid.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/rpc/extr_kull_m_rpc_drsr.c_kull_m_rpc_drsr_MakeAttid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 114, i32 112, i32 99, i32 95, i32 100, i32 114, i32 115, i32 114, i32 95, i32 77, i32 97, i32 107, i32 101, i32 65, i32 116, i32 116, i32 105, i32 100, i32 95, i32 97, i32 100, i32 100, i32 80, i32 114, i32 101, i32 102, i32 105, i32 120, i32 84, i32 111, i32 84, i32 97, i32 98, i32 108, i32 101, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_rpc_drsr_MakeAttid(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64* @strrchr(i32 %15, i8 signext 46)
  store i64* %16, i64** %12, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %68

18:                                               ; preds = %4
  %19 = load i64*, i64** %12, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %67

23:                                               ; preds = %18
  %24 = load i64*, i64** %12, align 8
  %25 = getelementptr inbounds i64, i64* %24, i32 1
  store i64* %25, i64** %12, align 8
  %26 = load i64*, i64** %12, align 8
  %27 = call i32 @strtoul(i64* %26, i32* null, i32 0)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = srem i32 %28, 16384
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %32, 16384
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 32768
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %34, %23
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @kull_m_asn1_DotVal2Eoid(i32 %39, %struct.TYPE_4__* %13)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 128
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, %46
  store i32 %49, i32* %47, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @kull_m_rpc_drsr_MakeAttid_addPrefixToTable(i32* %50, %struct.TYPE_4__* %13, i32* %11, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %42
  %55 = load i32, i32* %11, align 4
  %56 = shl i32 %55, 16
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %62

60:                                               ; preds = %42
  %61 = call i32 @PRINT_ERROR(i8* bitcast ([44 x i32]* @.str to i8*))
  br label %62

62:                                               ; preds = %60, %54
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @kull_m_asn1_freeEnc(i32 %64)
  br label %66

66:                                               ; preds = %62, %38
  br label %67

67:                                               ; preds = %66, %18
  br label %68

68:                                               ; preds = %67, %4
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

declare dso_local i64* @strrchr(i32, i8 signext) #1

declare dso_local i32 @strtoul(i64*, i32*, i32) #1

declare dso_local i64 @kull_m_asn1_DotVal2Eoid(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @kull_m_rpc_drsr_MakeAttid_addPrefixToTable(i32*, %struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

declare dso_local i32 @kull_m_asn1_freeEnc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
