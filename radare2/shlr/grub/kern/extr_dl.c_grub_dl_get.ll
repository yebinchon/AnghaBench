; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_dl.c_grub_dl_get.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_dl.c_grub_dl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }

@grub_dl_head = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @grub_dl_get(i8* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @grub_dl_head, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %4, align 8
  br label %6

6:                                                ; preds = %23, %1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @grub_strcmp(i8* %10, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %9
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %2, align 8
  br label %28

22:                                               ; preds = %9
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %4, align 8
  br label %6

27:                                               ; preds = %6
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %28

28:                                               ; preds = %27, %18
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %29
}

declare dso_local i64 @grub_strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
