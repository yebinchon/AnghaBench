; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_fs.c_grub_blocklist_convert.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_fs.c_grub_blocklist_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (%struct.TYPE_10__*)* }
%struct.TYPE_10__ = type { i64, i32, i64, i64, %struct.TYPE_11__*, i64, %struct.read_blocklist_closure*, %struct.TYPE_9__* }
%struct.read_blocklist_closure = type { i64, i64, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@grub_fs_blocklist = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@read_blocklist = common dso_local global i64 0, align 8
@grub_errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grub_blocklist_convert(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.read_blocklist_closure, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 4
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %7 = icmp eq %struct.TYPE_11__* %6, @grub_fs_blocklist
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 7
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %8, %1
  br label %88

21:                                               ; preds = %15
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  store i32 1, i32* %25, align 8
  %26 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %3, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %3, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %3, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 7
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @grub_partition_get_start(i32 %35)
  %37 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %3, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load i64, i64* @read_blocklist, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 5
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 6
  store %struct.read_blocklist_closure* %3, %struct.read_blocklist_closure** %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @grub_file_read(%struct.TYPE_10__* %43, i32 0, i64 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 5
  store i64 0, i64* %49, align 8
  %50 = load i64, i64* @grub_errno, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %21
  %53 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %3, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %52, %21
  store i64 0, i64* @grub_errno, align 8
  %60 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %3, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @grub_free(i64 %61)
  br label %85

63:                                               ; preds = %52
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %67, align 8
  %69 = icmp ne i32 (%struct.TYPE_10__*)* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %77 = call i32 %75(%struct.TYPE_10__* %76)
  br label %78

78:                                               ; preds = %70, %63
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 4
  store %struct.TYPE_11__* @grub_fs_blocklist, %struct.TYPE_11__** %80, align 8
  %81 = getelementptr inbounds %struct.read_blocklist_closure, %struct.read_blocklist_closure* %3, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %78, %59
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %85, %20
  ret void
}

declare dso_local i32 @grub_partition_get_start(i32) #1

declare dso_local i32 @grub_file_read(%struct.TYPE_10__*, i32, i64) #1

declare dso_local i32 @grub_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
