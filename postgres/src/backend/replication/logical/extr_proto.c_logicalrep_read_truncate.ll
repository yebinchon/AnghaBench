; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_proto.c_logicalrep_read_truncate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_proto.c_logicalrep_read_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8
@TRUNCATE_CASCADE = common dso_local global i32 0, align 4
@TRUNCATE_RESTART_SEQS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @logicalrep_read_truncate(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** @NIL, align 8
  store i32* %11, i32** %9, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i8* @pq_getmsgint(i32 %12, i32 4)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i8* @pq_getmsgint(i32 %15, i32 1)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @TRUNCATE_CASCADE, align 4
  %20 = and i32 %18, %19
  %21 = icmp sgt i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @TRUNCATE_RESTART_SEQS, align 4
  %26 = and i32 %24, %25
  %27 = icmp sgt i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %39, %3
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i8* @pq_getmsgint(i32 %36, i32 4)
  %38 = call i32* @lappend_oid(i32* %35, i8* %37)
  store i32* %38, i32** %9, align 8
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %30

42:                                               ; preds = %30
  %43 = load i32*, i32** %9, align 8
  ret i32* %43
}

declare dso_local i8* @pq_getmsgint(i32, i32) #1

declare dso_local i32* @lappend_oid(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
