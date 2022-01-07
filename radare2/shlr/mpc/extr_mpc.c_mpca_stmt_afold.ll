; ModuleID = '/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpca_stmt_afold.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpca_stmt_afold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32, %struct.TYPE_6__**)* @mpca_stmt_afold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @mpca_stmt_afold(i32 %0, %struct.TYPE_6__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %4, align 8
  %6 = call %struct.TYPE_6__* @malloc(i32 24)
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %5, align 8
  %7 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %8 = bitcast %struct.TYPE_6__** %7 to i8**
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %14 = bitcast %struct.TYPE_6__** %13 to i8**
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %20 = bitcast %struct.TYPE_6__** %19 to i32**
  %21 = getelementptr inbounds i32*, i32** %20, i64 3
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %27 = bitcast %struct.TYPE_6__** %26 to i8**
  %28 = getelementptr inbounds i8*, i8** %27, i64 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @free(i8* %29)
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %32 = bitcast %struct.TYPE_6__** %31 to i8**
  %33 = getelementptr inbounds i8*, i8** %32, i64 4
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %36
}

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
