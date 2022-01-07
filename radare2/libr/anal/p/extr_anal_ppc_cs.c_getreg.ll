; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_ppc_cs.c_getreg.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_ppc_cs.c_getreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Getarg = type { i32, i32* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.Getarg*, i32)* @getreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getreg(%struct.Getarg* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.Getarg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca { i64, i32 }, align 8
  store %struct.Getarg* %0, %struct.Getarg** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.Getarg*, %struct.Getarg** %4, align 8
  %11 = getelementptr inbounds %struct.Getarg, %struct.Getarg* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load %struct.Getarg*, %struct.Getarg** %4, align 8
  %14 = getelementptr inbounds %struct.Getarg, %struct.Getarg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp sge i32 %19, 8
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %2
  store i8* null, i8** %3, align 8
  br label %42

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = call { i64, i32 } @INSOP(i32 %23)
  store { i64, i32 } %24, { i64, i32 }* %9, align 8
  %25 = bitcast { i64, i32 }* %9 to i8*
  %26 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 8 %25, i64 12, i1 false)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %41 [
    i32 128, label %29
    i32 129, label %34
    i32 130, label %40
    i32 131, label %40
    i32 132, label %40
  ]

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @cs_reg_name(i32 %30, i32 %32)
  store i8* %33, i8** %3, align 8
  br label %42

34:                                               ; preds = %22
  %35 = load i32, i32* %7, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @cs_reg_name(i32 %35, i32 %38)
  store i8* %39, i8** %3, align 8
  br label %42

40:                                               ; preds = %22, %22, %22
  store i8* null, i8** %3, align 8
  br label %42

41:                                               ; preds = %22
  store i8* null, i8** %3, align 8
  br label %42

42:                                               ; preds = %41, %40, %34, %29, %21
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

declare dso_local { i64, i32 } @INSOP(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @cs_reg_name(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
