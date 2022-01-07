; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_first_line.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_first_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@show_activity = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [81 x i8] c"Name                   Objects      Alloc       Free   %%Fast Fallb O CmpX   UL\0A\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"Name                   Objects Objsize           %s Slabs/Part/Cpu  O/S O %%Fr %%Ef Flg\0A\00", align 1
@sort_loss = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c" Loss\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Space\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @first_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @first_line() #0 {
  %1 = load i64, i64* @show_activity, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  br label %11

5:                                                ; preds = %0
  %6 = load i64, i64* @sort_loss, align 8
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  br label %11

11:                                               ; preds = %5, %3
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
