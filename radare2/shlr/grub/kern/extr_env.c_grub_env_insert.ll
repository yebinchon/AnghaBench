; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_env.c_grub_env_insert.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_env.c_grub_env_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_env_context = type { %struct.grub_env_var** }
%struct.grub_env_var = type { %struct.grub_env_var*, %struct.grub_env_var**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grub_env_context*, %struct.grub_env_var*)* @grub_env_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grub_env_insert(%struct.grub_env_context* %0, %struct.grub_env_var* %1) #0 {
  %3 = alloca %struct.grub_env_context*, align 8
  %4 = alloca %struct.grub_env_var*, align 8
  %5 = alloca i32, align 4
  store %struct.grub_env_context* %0, %struct.grub_env_context** %3, align 8
  store %struct.grub_env_var* %1, %struct.grub_env_var** %4, align 8
  %6 = load %struct.grub_env_var*, %struct.grub_env_var** %4, align 8
  %7 = getelementptr inbounds %struct.grub_env_var, %struct.grub_env_var* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @grub_env_hashval(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.grub_env_context*, %struct.grub_env_context** %3, align 8
  %11 = getelementptr inbounds %struct.grub_env_context, %struct.grub_env_context* %10, i32 0, i32 0
  %12 = load %struct.grub_env_var**, %struct.grub_env_var*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.grub_env_var*, %struct.grub_env_var** %12, i64 %14
  %16 = load %struct.grub_env_var*, %struct.grub_env_var** %4, align 8
  %17 = getelementptr inbounds %struct.grub_env_var, %struct.grub_env_var* %16, i32 0, i32 1
  store %struct.grub_env_var** %15, %struct.grub_env_var*** %17, align 8
  %18 = load %struct.grub_env_context*, %struct.grub_env_context** %3, align 8
  %19 = getelementptr inbounds %struct.grub_env_context, %struct.grub_env_context* %18, i32 0, i32 0
  %20 = load %struct.grub_env_var**, %struct.grub_env_var*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.grub_env_var*, %struct.grub_env_var** %20, i64 %22
  %24 = load %struct.grub_env_var*, %struct.grub_env_var** %23, align 8
  %25 = load %struct.grub_env_var*, %struct.grub_env_var** %4, align 8
  %26 = getelementptr inbounds %struct.grub_env_var, %struct.grub_env_var* %25, i32 0, i32 0
  store %struct.grub_env_var* %24, %struct.grub_env_var** %26, align 8
  %27 = load %struct.grub_env_var*, %struct.grub_env_var** %4, align 8
  %28 = getelementptr inbounds %struct.grub_env_var, %struct.grub_env_var* %27, i32 0, i32 0
  %29 = load %struct.grub_env_var*, %struct.grub_env_var** %28, align 8
  %30 = icmp ne %struct.grub_env_var* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.grub_env_var*, %struct.grub_env_var** %4, align 8
  %33 = getelementptr inbounds %struct.grub_env_var, %struct.grub_env_var* %32, i32 0, i32 0
  %34 = load %struct.grub_env_var*, %struct.grub_env_var** %4, align 8
  %35 = getelementptr inbounds %struct.grub_env_var, %struct.grub_env_var* %34, i32 0, i32 0
  %36 = load %struct.grub_env_var*, %struct.grub_env_var** %35, align 8
  %37 = getelementptr inbounds %struct.grub_env_var, %struct.grub_env_var* %36, i32 0, i32 1
  store %struct.grub_env_var** %33, %struct.grub_env_var*** %37, align 8
  br label %38

38:                                               ; preds = %31, %2
  %39 = load %struct.grub_env_var*, %struct.grub_env_var** %4, align 8
  %40 = load %struct.grub_env_context*, %struct.grub_env_context** %3, align 8
  %41 = getelementptr inbounds %struct.grub_env_context, %struct.grub_env_context* %40, i32 0, i32 0
  %42 = load %struct.grub_env_var**, %struct.grub_env_var*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.grub_env_var*, %struct.grub_env_var** %42, i64 %44
  store %struct.grub_env_var* %39, %struct.grub_env_var** %45, align 8
  ret void
}

declare dso_local i32 @grub_env_hashval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
