; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/extr_grubfs.c_grubfs_new.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/extr_grubfs.c_grubfs_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.grub_file* }
%struct.grub_file = type { %struct.grub_fs*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.grub_fs = type { i32 }

@read_foo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @grubfs_new(%struct.grub_fs* %0, i8* %1) #0 {
  %3 = alloca %struct.grub_fs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.grub_file*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.grub_fs* %0, %struct.grub_fs** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i8* @empty(i32 8)
  %8 = bitcast i8* %7 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %6, align 8
  %9 = call i8* @empty(i32 16)
  %10 = bitcast i8* %9 to %struct.grub_file*
  store %struct.grub_file* %10, %struct.grub_file** %5, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store %struct.grub_file* %10, %struct.grub_file** %12, align 8
  %13 = call i8* @empty(i32 1028)
  %14 = bitcast i8* %13 to %struct.TYPE_7__*
  %15 = load %struct.grub_file*, %struct.grub_file** %5, align 8
  %16 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %15, i32 0, i32 1
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %16, align 8
  %17 = call i8* @empty(i32 4)
  %18 = bitcast i8* %17 to %struct.TYPE_6__*
  %19 = load %struct.grub_file*, %struct.grub_file** %5, align 8
  %20 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %22, align 8
  %23 = load %struct.grub_file*, %struct.grub_file** %5, align 8
  %24 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = bitcast %struct.TYPE_7__* %25 to %struct.TYPE_8__*
  %27 = load %struct.grub_file*, %struct.grub_file** %5, align 8
  %28 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %32, align 8
  %33 = load i32, i32* @read_foo, align 4
  %34 = load %struct.grub_file*, %struct.grub_file** %5, align 8
  %35 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 %33, i32* %41, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = load %struct.grub_file*, %struct.grub_file** %5, align 8
  %44 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i8* %42, i8** %48, align 8
  %49 = load %struct.grub_fs*, %struct.grub_fs** %3, align 8
  %50 = load %struct.grub_file*, %struct.grub_file** %5, align 8
  %51 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %50, i32 0, i32 0
  store %struct.grub_fs* %49, %struct.grub_fs** %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  ret %struct.TYPE_9__* %52
}

declare dso_local i8* @empty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
