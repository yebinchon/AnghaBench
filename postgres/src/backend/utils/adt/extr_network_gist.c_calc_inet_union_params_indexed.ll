; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network_gist.c_calc_inet_union_params_indexed.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network_gist.c_calc_inet_union_params_indexed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64*, i32, i32*, i32*, i32*, i32*)* @calc_inet_union_params_indexed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_inet_union_params_indexed(%struct.TYPE_3__* %0, i64* %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i64* %1, i64** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @DatumGetInetKeyP(i32 %32)
  store i32* %33, i32** %20, align 8
  %34 = load i32*, i32** %20, align 8
  %35 = call i32 @gk_ip_family(i32* %34)
  store i32 %35, i32* %16, align 4
  store i32 %35, i32* %15, align 4
  %36 = load i32*, i32** %20, align 8
  %37 = call i32 @gk_ip_minbits(i32* %36)
  store i32 %37, i32* %17, align 4
  %38 = load i32*, i32** %20, align 8
  %39 = call i32 @gk_ip_commonbits(i32* %38)
  store i32 %39, i32* %18, align 4
  %40 = load i32*, i32** %20, align 8
  %41 = call i8* @gk_ip_addr(i32* %40)
  store i8* %41, i8** %19, align 8
  store i32 1, i32* %21, align 4
  br label %42

42:                                               ; preds = %98, %7
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %101

46:                                               ; preds = %42
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = load i32, i32* %21, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32* @DatumGetInetKeyP(i32 %55)
  store i32* %56, i32** %20, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load i32*, i32** %20, align 8
  %59 = call i32 @gk_ip_family(i32* %58)
  %60 = icmp sgt i32 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %46
  %62 = load i32*, i32** %20, align 8
  %63 = call i32 @gk_ip_family(i32* %62)
  store i32 %63, i32* %15, align 4
  br label %64

64:                                               ; preds = %61, %46
  %65 = load i32, i32* %16, align 4
  %66 = load i32*, i32** %20, align 8
  %67 = call i32 @gk_ip_family(i32* %66)
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32*, i32** %20, align 8
  %71 = call i32 @gk_ip_family(i32* %70)
  store i32 %71, i32* %16, align 4
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32, i32* %17, align 4
  %74 = load i32*, i32** %20, align 8
  %75 = call i32 @gk_ip_minbits(i32* %74)
  %76 = icmp sgt i32 %73, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32*, i32** %20, align 8
  %79 = call i32 @gk_ip_minbits(i32* %78)
  store i32 %79, i32* %17, align 4
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32, i32* %18, align 4
  %82 = load i32*, i32** %20, align 8
  %83 = call i32 @gk_ip_commonbits(i32* %82)
  %84 = icmp sgt i32 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32*, i32** %20, align 8
  %87 = call i32 @gk_ip_commonbits(i32* %86)
  store i32 %87, i32* %18, align 4
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i32, i32* %18, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i8*, i8** %19, align 8
  %93 = load i32*, i32** %20, align 8
  %94 = call i8* @gk_ip_addr(i32* %93)
  %95 = load i32, i32* %18, align 4
  %96 = call i32 @bitncommon(i8* %92, i8* %94, i32 %95)
  store i32 %96, i32* %18, align 4
  br label %97

97:                                               ; preds = %91, %88
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %21, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %21, align 4
  br label %42

101:                                              ; preds = %42
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %106

106:                                              ; preds = %105, %101
  %107 = load i32, i32* %15, align 4
  %108 = load i32*, i32** %11, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32*, i32** %12, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32*, i32** %13, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %18, align 4
  %114 = load i32*, i32** %14, align 8
  store i32 %113, i32* %114, align 4
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @DatumGetInetKeyP(i32) #1

declare dso_local i32 @gk_ip_family(i32*) #1

declare dso_local i32 @gk_ip_minbits(i32*) #1

declare dso_local i32 @gk_ip_commonbits(i32*) #1

declare dso_local i8* @gk_ip_addr(i32*) #1

declare dso_local i32 @bitncommon(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
