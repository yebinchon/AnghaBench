; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_file_signextend.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_file_signextend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.r_magic = type { i32, i32 }

@UNSIGNED = common dso_local global i32 0, align 4
@R_MAGIC_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot happen: m->type=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_signextend(%struct.TYPE_4__* %0, %struct.r_magic* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.r_magic*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.r_magic* %1, %struct.r_magic** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.r_magic*, %struct.r_magic** %6, align 8
  %9 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @UNSIGNED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %46, label %14

14:                                               ; preds = %3
  %15 = load %struct.r_magic*, %struct.r_magic** %6, align 8
  %16 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %31 [
    i32 155, label %18
    i32 129, label %22
    i32 157, label %22
    i32 141, label %22
    i32 154, label %26
    i32 165, label %26
    i32 149, label %26
    i32 138, label %26
    i32 150, label %26
    i32 162, label %26
    i32 146, label %26
    i32 137, label %26
    i32 139, label %26
    i32 161, label %26
    i32 145, label %26
    i32 136, label %26
    i32 151, label %26
    i32 163, label %26
    i32 147, label %26
    i32 132, label %28
    i32 158, label %28
    i32 142, label %28
    i32 134, label %28
    i32 133, label %28
    i32 160, label %28
    i32 159, label %28
    i32 144, label %28
    i32 143, label %28
    i32 152, label %28
    i32 164, label %28
    i32 148, label %28
    i32 128, label %30
    i32 135, label %30
    i32 156, label %30
    i32 140, label %30
    i32 131, label %30
    i32 130, label %30
    i32 153, label %30
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = trunc i32 %19 to i8
  %21 = sext i8 %20 to i32
  store i32 %21, i32* %7, align 4
  br label %45

22:                                               ; preds = %14, %14, %14
  %23 = load i32, i32* %7, align 4
  %24 = trunc i32 %23 to i16
  %25 = sext i16 %24 to i32
  store i32 %25, i32* %7, align 4
  br label %45

26:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %7, align 4
  br label %45

28:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %7, align 4
  br label %45

30:                                               ; preds = %14, %14, %14, %14, %14, %14, %14
  br label %45

31:                                               ; preds = %14
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @R_MAGIC_CHECK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = load %struct.r_magic*, %struct.r_magic** %6, align 8
  %41 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @file_magwarn(%struct.TYPE_4__* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %38, %31
  store i32 -1, i32* %4, align 4
  br label %48

45:                                               ; preds = %30, %28, %26, %22, %18
  br label %46

46:                                               ; preds = %45, %3
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @file_magwarn(%struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
