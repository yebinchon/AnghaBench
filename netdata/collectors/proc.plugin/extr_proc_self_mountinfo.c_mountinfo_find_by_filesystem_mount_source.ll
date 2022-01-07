; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_self_mountinfo.c_mountinfo_find_by_filesystem_mount_source.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_proc_self_mountinfo.c_mountinfo_find_by_filesystem_mount_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mountinfo = type { i64, i64, i64, i64, %struct.mountinfo* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mountinfo* @mountinfo_find_by_filesystem_mount_source(%struct.mountinfo* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.mountinfo*, align 8
  %5 = alloca %struct.mountinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mountinfo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mountinfo* %0, %struct.mountinfo** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @simple_hash(i8* %11)
  store i64 %12, i64* %9, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @simple_hash(i8* %13)
  store i64 %14, i64* %10, align 8
  %15 = load %struct.mountinfo*, %struct.mountinfo** %5, align 8
  store %struct.mountinfo* %15, %struct.mountinfo** %8, align 8
  br label %16

16:                                               ; preds = %64, %3
  %17 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  %18 = icmp ne %struct.mountinfo* %17, null
  br i1 %18, label %19, label %68

19:                                               ; preds = %16
  %20 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  %21 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %56

24:                                               ; preds = %19
  %25 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  %26 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %24
  %30 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  %31 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %29
  %36 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  %37 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  %43 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strcmp(i64 %44, i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %41
  %49 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  %50 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @strcmp(i64 %51, i8* %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %48, %41, %35, %29, %24, %19
  %57 = phi i1 [ false, %41 ], [ false, %35 ], [ false, %29 ], [ false, %24 ], [ false, %19 ], [ %55, %48 ]
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  store %struct.mountinfo* %62, %struct.mountinfo** %4, align 8
  br label %69

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.mountinfo*, %struct.mountinfo** %8, align 8
  %66 = getelementptr inbounds %struct.mountinfo, %struct.mountinfo* %65, i32 0, i32 4
  %67 = load %struct.mountinfo*, %struct.mountinfo** %66, align 8
  store %struct.mountinfo* %67, %struct.mountinfo** %8, align 8
  br label %16

68:                                               ; preds = %16
  store %struct.mountinfo* null, %struct.mountinfo** %4, align 8
  br label %69

69:                                               ; preds = %68, %61
  %70 = load %struct.mountinfo*, %struct.mountinfo** %4, align 8
  ret %struct.mountinfo* %70
}

declare dso_local i64 @simple_hash(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
