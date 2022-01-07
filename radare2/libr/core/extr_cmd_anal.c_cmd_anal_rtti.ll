; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_cmd_anal_rtti.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_anal.c_cmd_anal_rtti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@help_msg_av = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*)* @cmd_anal_rtti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_anal_rtti(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  switch i32 %10, label %54 [
    i32 0, label %11
    i32 106, label %11
    i32 97, label %22
    i32 114, label %30
    i32 68, label %35
  ]

11:                                               ; preds = %2, %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = call i32 @r_anal_rtti_print_at_vtable(i32 %14, i32 %17, i8 signext %20)
  br label %58

22:                                               ; preds = %2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @r_anal_rtti_print_all(i32 %25, i8 signext %28)
  br label %58

30:                                               ; preds = %2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @r_anal_rtti_recover_all(i32 %33)
  br label %58

35:                                               ; preds = %2
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = call i8* @r_str_trim_dup(i8* %37)
  store i8* %38, i8** %5, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = call i8* @r_anal_rtti_demangle_class_name(i32 %41, i8* %42)
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %35
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @r_cons_println(i8* %49)
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @free(i8* %51)
  br label %53

53:                                               ; preds = %48, %35
  br label %58

54:                                               ; preds = %2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = load i32, i32* @help_msg_av, align 4
  %57 = call i32 @r_core_cmd_help(%struct.TYPE_4__* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %53, %30, %22, %11
  ret void
}

declare dso_local i32 @r_anal_rtti_print_at_vtable(i32, i32, i8 signext) #1

declare dso_local i32 @r_anal_rtti_print_all(i32, i8 signext) #1

declare dso_local i32 @r_anal_rtti_recover_all(i32) #1

declare dso_local i8* @r_str_trim_dup(i8*) #1

declare dso_local i8* @r_anal_rtti_demangle_class_name(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_cons_println(i8*) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
