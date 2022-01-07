; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_flag.c_flagbars.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_flag.c_flagbars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.flagbar_t = type { i32, %struct.TYPE_3__* }

@flagbar_foreach = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @flagbars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flagbars(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.flagbar_t, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i32 @r_cons_get_size(i32* null)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sub nsw i32 %8, 80
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, 80
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = getelementptr inbounds %struct.flagbar_t, %struct.flagbar_t* %6, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.flagbar_t, %struct.flagbar_t* %6, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @r_flag_space_cur(i32 %26)
  %28 = load i32, i32* @flagbar_foreach, align 4
  %29 = call i32 @r_flag_foreach_space_glob(i32 %22, i8* %23, i32 %27, i32 %28, %struct.flagbar_t* %6)
  ret void
}

declare dso_local i32 @r_cons_get_size(i32*) #1

declare dso_local i32 @r_flag_foreach_space_glob(i32, i8*, i32, i32, %struct.flagbar_t*) #1

declare dso_local i32 @r_flag_space_cur(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
