; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_PrintQueryTuples.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_PrintQueryTuples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@pset = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @PrintQueryTuples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PrintQueryTuples(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = bitcast %struct.TYPE_6__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 8 bitcast (%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pset, i32 0, i32 4) to i8*), i64 4, i1 false)
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pset, i32 0, i32 3), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pset, i32 0, i32 2), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pset, i32 0, i32 2), align 8
  %18 = call i32 @openQueryOutputFile(i64 %17, i32** %5, i32* %6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %47

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (...) @disable_sigpipe_trap()
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pset, i32 0, i32 0), align 8
  %30 = call i32 @printQuery(i32* %27, %struct.TYPE_6__* %4, i32* %28, i32 0, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @pclose(i32* %34)
  %36 = call i32 (...) @restore_sigpipe_trap()
  br label %40

37:                                               ; preds = %26
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @fclose(i32* %38)
  br label %40

40:                                               ; preds = %37, %33
  br label %46

41:                                               ; preds = %13
  %42 = load i32*, i32** %3, align 8
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pset, i32 0, i32 1), align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @pset, i32 0, i32 0), align 8
  %45 = call i32 @printQuery(i32* %42, %struct.TYPE_6__* %4, i32* %43, i32 0, i32 %44)
  br label %46

46:                                               ; preds = %41, %40
  store i32 1, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %20
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @openQueryOutputFile(i64, i32**, i32*) #2

declare dso_local i32 @disable_sigpipe_trap(...) #2

declare dso_local i32 @printQuery(i32*, %struct.TYPE_6__*, i32*, i32, i32) #2

declare dso_local i32 @pclose(i32*) #2

declare dso_local i32 @restore_sigpipe_trap(...) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
