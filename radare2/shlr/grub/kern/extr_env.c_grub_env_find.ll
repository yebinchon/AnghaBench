; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_env.c_grub_env_find.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_env.c_grub_env_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.grub_env_var** }
%struct.grub_env_var = type { i32, %struct.grub_env_var* }

@grub_current_context = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.grub_env_var* @grub_env_find(i8* %0) #0 {
  %2 = alloca %struct.grub_env_var*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.grub_env_var*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @grub_env_hashval(i8* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @grub_current_context, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.grub_env_var**, %struct.grub_env_var*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.grub_env_var*, %struct.grub_env_var** %10, i64 %12
  %14 = load %struct.grub_env_var*, %struct.grub_env_var** %13, align 8
  store %struct.grub_env_var* %14, %struct.grub_env_var** %4, align 8
  br label %15

15:                                               ; preds = %28, %1
  %16 = load %struct.grub_env_var*, %struct.grub_env_var** %4, align 8
  %17 = icmp ne %struct.grub_env_var* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load %struct.grub_env_var*, %struct.grub_env_var** %4, align 8
  %20 = getelementptr inbounds %struct.grub_env_var, %struct.grub_env_var* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @grub_strcmp(i32 %21, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load %struct.grub_env_var*, %struct.grub_env_var** %4, align 8
  store %struct.grub_env_var* %26, %struct.grub_env_var** %2, align 8
  br label %33

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.grub_env_var*, %struct.grub_env_var** %4, align 8
  %30 = getelementptr inbounds %struct.grub_env_var, %struct.grub_env_var* %29, i32 0, i32 1
  %31 = load %struct.grub_env_var*, %struct.grub_env_var** %30, align 8
  store %struct.grub_env_var* %31, %struct.grub_env_var** %4, align 8
  br label %15

32:                                               ; preds = %15
  store %struct.grub_env_var* null, %struct.grub_env_var** %2, align 8
  br label %33

33:                                               ; preds = %32, %25
  %34 = load %struct.grub_env_var*, %struct.grub_env_var** %2, align 8
  ret %struct.grub_env_var* %34
}

declare dso_local i32 @grub_env_hashval(i8*) #1

declare dso_local i64 @grub_strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
