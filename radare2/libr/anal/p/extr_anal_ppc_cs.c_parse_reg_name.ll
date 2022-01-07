; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_ppc_cs.c_parse_reg_name.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_ppc_cs.c_parse_reg_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@PPC_REG_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32*, i32)* @parse_reg_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_reg_name(%struct.TYPE_6__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__, align 4
  %11 = alloca { i64, i32 }, align 8
  %12 = alloca %struct.TYPE_7__, align 4
  %13 = alloca { i64, i32 }, align 8
  %14 = alloca %struct.TYPE_7__, align 4
  %15 = alloca { i64, i32 }, align 8
  %16 = alloca %struct.TYPE_7__, align 4
  %17 = alloca { i64, i32 }, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %66

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call { i64, i32 } @INSOP(i32 %22)
  store { i64, i32 } %23, { i64, i32 }* %11, align 8
  %24 = bitcast { i64, i32 }* %11 to i8*
  %25 = bitcast %struct.TYPE_7__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 8 %24, i64 12, i1 false)
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %64 [
    i32 128, label %28
    i32 129, label %40
  ]

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call { i64, i32 } @INSOP(i32 %30)
  store { i64, i32 } %31, { i64, i32 }* %13, align 8
  %32 = bitcast { i64, i32 }* %13 to i8*
  %33 = bitcast %struct.TYPE_7__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 8 %32, i64 12, i1 false)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @cs_reg_name(i32 %29, i32 %35)
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %65

40:                                               ; preds = %21
  %41 = load i32, i32* %9, align 4
  %42 = call { i64, i32 } @INSOP(i32 %41)
  store { i64, i32 } %42, { i64, i32 }* %15, align 8
  %43 = bitcast { i64, i32 }* %15 to i8*
  %44 = bitcast %struct.TYPE_7__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 8 %43, i64 12, i1 false)
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PPC_REG_INVALID, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %40
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call { i64, i32 } @INSOP(i32 %52)
  store { i64, i32 } %53, { i64, i32 }* %17, align 8
  %54 = bitcast { i64, i32 }* %17 to i8*
  %55 = bitcast %struct.TYPE_7__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 8 %54, i64 12, i1 false)
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @cs_reg_name(i32 %51, i32 %58)
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  br label %63

63:                                               ; preds = %50, %40
  br label %65

64:                                               ; preds = %21
  br label %65

65:                                               ; preds = %64, %63, %28
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %20
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local { i64, i32 } @INSOP(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @cs_reg_name(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
