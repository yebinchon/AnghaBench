; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_packet.c_WPACKET_reserve_bytes.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_packet.c_WPACKET_reserve_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i64 }

@SIZE_MAX = common dso_local global i32 0, align 4
@DEFAULT_BUF_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WPACKET_reserve_bytes(%struct.TYPE_5__* %0, i64 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i1 [ false, %3 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @ossl_assert(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %103

23:                                               ; preds = %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %26, %29
  %31 = load i64, i64* %6, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %103

34:                                               ; preds = %23
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = icmp ne %struct.TYPE_6__* %37, null
  br i1 %38, label %39, label %95

39:                                               ; preds = %34
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %44, %47
  %49 = load i64, i64* %6, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %95

51:                                               ; preds = %39
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ugt i64 %52, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i64, i64* %6, align 8
  br label %67

61:                                               ; preds = %51
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  br label %67

67:                                               ; preds = %61, %59
  %68 = phi i64 [ %60, %59 ], [ %66, %61 ]
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* @SIZE_MAX, align 4
  %71 = sdiv i32 %70, 2
  %72 = sext i32 %71 to i64
  %73 = icmp ugt i64 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i32, i32* @SIZE_MAX, align 4
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %8, align 8
  br label %86

77:                                               ; preds = %67
  %78 = load i64, i64* %9, align 8
  %79 = mul i64 %78, 2
  store i64 %79, i64* %8, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* @DEFAULT_BUF_SIZE, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i64, i64* @DEFAULT_BUF_SIZE, align 8
  store i64 %84, i64* %8, align 8
  br label %85

85:                                               ; preds = %83, %77
  br label %86

86:                                               ; preds = %85, %74
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i64 @BUF_MEM_grow(%struct.TYPE_6__* %89, i64 %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 0, i32* %4, align 4
  br label %103

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %39, %34
  %96 = load i8**, i8*** %7, align 8
  %97 = icmp ne i8** %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = call i8* @WPACKET_get_curr(%struct.TYPE_5__* %99)
  %101 = load i8**, i8*** %7, align 8
  store i8* %100, i8** %101, align 8
  br label %102

102:                                              ; preds = %98, %95
  store i32 1, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %93, %33, %22
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i64 @BUF_MEM_grow(%struct.TYPE_6__*, i64) #1

declare dso_local i8* @WPACKET_get_curr(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
