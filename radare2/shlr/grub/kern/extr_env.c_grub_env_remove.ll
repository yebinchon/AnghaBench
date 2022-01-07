; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_env.c_grub_env_remove.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_env.c_grub_env_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_env_var = type { %struct.TYPE_2__**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grub_env_var*)* @grub_env_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grub_env_remove(%struct.grub_env_var* %0) #0 {
  %2 = alloca %struct.grub_env_var*, align 8
  store %struct.grub_env_var* %0, %struct.grub_env_var** %2, align 8
  %3 = load %struct.grub_env_var*, %struct.grub_env_var** %2, align 8
  %4 = getelementptr inbounds %struct.grub_env_var, %struct.grub_env_var* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = load %struct.grub_env_var*, %struct.grub_env_var** %2, align 8
  %7 = getelementptr inbounds %struct.grub_env_var, %struct.grub_env_var* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %7, align 8
  store %struct.TYPE_2__* %5, %struct.TYPE_2__** %8, align 8
  %9 = load %struct.grub_env_var*, %struct.grub_env_var** %2, align 8
  %10 = getelementptr inbounds %struct.grub_env_var, %struct.grub_env_var* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.grub_env_var*, %struct.grub_env_var** %2, align 8
  %15 = getelementptr inbounds %struct.grub_env_var, %struct.grub_env_var* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %15, align 8
  %17 = load %struct.grub_env_var*, %struct.grub_env_var** %2, align 8
  %18 = getelementptr inbounds %struct.grub_env_var, %struct.grub_env_var* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.TYPE_2__** %16, %struct.TYPE_2__*** %20, align 8
  br label %21

21:                                               ; preds = %13, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
