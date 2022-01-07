; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_duplicate_flag.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_duplicate_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.duplicate_flag_t = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @duplicate_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @duplicate_flag(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.duplicate_flag_t*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.duplicate_flag_t*
  store %struct.duplicate_flag_t* %9, %struct.duplicate_flag_t** %6, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.duplicate_flag_t*, %struct.duplicate_flag_t** %6, align 8
  %14 = getelementptr inbounds %struct.duplicate_flag_t, %struct.duplicate_flag_t* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @r_str_glob(i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = call %struct.TYPE_6__* @r_flag_item_clone(%struct.TYPE_6__* %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %7, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = icmp ne %struct.TYPE_6__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %31

24:                                               ; preds = %18
  %25 = load %struct.duplicate_flag_t*, %struct.duplicate_flag_t** %6, align 8
  %26 = getelementptr inbounds %struct.duplicate_flag_t, %struct.duplicate_flag_t* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = call i32 @r_list_append(i32 %27, %struct.TYPE_6__* %28)
  br label %30

30:                                               ; preds = %24, %2
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %23
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @r_str_glob(i32, i32) #1

declare dso_local %struct.TYPE_6__* @r_flag_item_clone(%struct.TYPE_6__*) #1

declare dso_local i32 @r_list_append(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
