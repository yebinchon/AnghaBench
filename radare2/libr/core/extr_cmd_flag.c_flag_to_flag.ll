; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_flag.c_flag_to_flag.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_flag.c_flag_to_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.flag_to_flag_t = type { i64, i64 }

@UT64_MAX = common dso_local global i64 0, align 8
@flag_to_flag_foreach = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @flag_to_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flag_to_flag(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.flag_to_flag_t, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @r_return_val_if_fail(i8* %7, i32 0)
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @r_str_trim_ro(i8* %9)
  store i8* %10, i8** %5, align 8
  %11 = getelementptr inbounds %struct.flag_to_flag_t, %struct.flag_to_flag_t* %6, i32 0, i32 0
  %12 = load i64, i64* @UT64_MAX, align 8
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds %struct.flag_to_flag_t, %struct.flag_to_flag_t* %6, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %13, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @flag_to_flag_foreach, align 4
  %22 = call i32 @r_flag_foreach_glob(i32 %19, i8* %20, i32 %21, %struct.flag_to_flag_t* %6)
  %23 = getelementptr inbounds %struct.flag_to_flag_t, %struct.flag_to_flag_t* %6, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @UT64_MAX, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.flag_to_flag_t, %struct.flag_to_flag_t* %6, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.flag_to_flag_t, %struct.flag_to_flag_t* %6, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %27, %2
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %34
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @r_return_val_if_fail(i8*, i32) #1

declare dso_local i8* @r_str_trim_ro(i8*) #1

declare dso_local i32 @r_flag_foreach_glob(i32, i8*, i32, %struct.flag_to_flag_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
