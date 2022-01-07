; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network_gist.c_calc_inet_union_params.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network_gist.c_calc_inet_union_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32*, i32*, i32*, i32*)* @calc_inet_union_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_inet_union_params(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
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
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp sle i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
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
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %21, align 4
  br label %44

44:                                               ; preds = %97, %7
  %45 = load i32, i32* %21, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %100

48:                                               ; preds = %44
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %50 = load i32, i32* %21, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @DatumGetInetKeyP(i32 %54)
  store i32* %55, i32** %20, align 8
  %56 = load i32, i32* %15, align 4
  %57 = load i32*, i32** %20, align 8
  %58 = call i32 @gk_ip_family(i32* %57)
  %59 = icmp sgt i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load i32*, i32** %20, align 8
  %62 = call i32 @gk_ip_family(i32* %61)
  store i32 %62, i32* %15, align 4
  br label %63

63:                                               ; preds = %60, %48
  %64 = load i32, i32* %16, align 4
  %65 = load i32*, i32** %20, align 8
  %66 = call i32 @gk_ip_family(i32* %65)
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32*, i32** %20, align 8
  %70 = call i32 @gk_ip_family(i32* %69)
  store i32 %70, i32* %16, align 4
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %17, align 4
  %73 = load i32*, i32** %20, align 8
  %74 = call i32 @gk_ip_minbits(i32* %73)
  %75 = icmp sgt i32 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32*, i32** %20, align 8
  %78 = call i32 @gk_ip_minbits(i32* %77)
  store i32 %78, i32* %17, align 4
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* %18, align 4
  %81 = load i32*, i32** %20, align 8
  %82 = call i32 @gk_ip_commonbits(i32* %81)
  %83 = icmp sgt i32 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32*, i32** %20, align 8
  %86 = call i32 @gk_ip_commonbits(i32* %85)
  store i32 %86, i32* %18, align 4
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i32, i32* %18, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i8*, i8** %19, align 8
  %92 = load i32*, i32** %20, align 8
  %93 = call i8* @gk_ip_addr(i32* %92)
  %94 = load i32, i32* %18, align 4
  %95 = call i32 @bitncommon(i8* %91, i8* %93, i32 %94)
  store i32 %95, i32* %18, align 4
  br label %96

96:                                               ; preds = %90, %87
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %21, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %21, align 4
  br label %44

100:                                              ; preds = %44
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %105

105:                                              ; preds = %104, %100
  %106 = load i32, i32* %15, align 4
  %107 = load i32*, i32** %11, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* %16, align 4
  %109 = load i32*, i32** %12, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %17, align 4
  %111 = load i32*, i32** %13, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* %18, align 4
  %113 = load i32*, i32** %14, align 8
  store i32 %112, i32* %113, align 4
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
