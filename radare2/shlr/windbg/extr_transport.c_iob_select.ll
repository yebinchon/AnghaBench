; ModuleID = '/home/carl/AnghaBench/radare2/shlr/windbg/extr_transport.c_iob_select.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/windbg/extr_transport.c_iob_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (...)*, i32 (...)* }

@io_backends = common dso_local global %struct.TYPE_4__** null, align 8
@sel_backend = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iob_select(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @io_backends, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %5, i64 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sel_backend, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sel_backend, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32 (...)*, i32 (...)** %16, align 8
  %18 = icmp ne i32 (...)* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sel_backend, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32 (...)*, i32 (...)** %21, align 8
  %23 = call i32 (...) %22()
  br label %24

24:                                               ; preds = %19, %14, %11
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** @sel_backend, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sel_backend, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (...)*, i32 (...)** %27, align 8
  %29 = icmp ne i32 (...)* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sel_backend, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (...)*, i32 (...)** %32, align 8
  %34 = call i32 (...) %33()
  br label %35

35:                                               ; preds = %30, %24
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %10
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
