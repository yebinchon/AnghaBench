; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_dstr_copy_strref.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_dstr.c_dstr_copy_strref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i64 }
%struct.strref = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dstr_copy_strref(%struct.dstr* %0, %struct.strref* %1) #0 {
  %3 = alloca %struct.dstr*, align 8
  %4 = alloca %struct.strref*, align 8
  store %struct.dstr* %0, %struct.dstr** %3, align 8
  store %struct.strref* %1, %struct.strref** %4, align 8
  %5 = load %struct.dstr*, %struct.dstr** %3, align 8
  %6 = getelementptr inbounds %struct.dstr, %struct.dstr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.dstr*, %struct.dstr** %3, align 8
  %11 = call i32 @dstr_free(%struct.dstr* %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.dstr*, %struct.dstr** %3, align 8
  %14 = load %struct.strref*, %struct.strref** %4, align 8
  %15 = getelementptr inbounds %struct.strref, %struct.strref* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.strref*, %struct.strref** %4, align 8
  %18 = getelementptr inbounds %struct.strref, %struct.strref* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dstr_ncopy(%struct.dstr* %13, i32 %16, i32 %19)
  ret void
}

declare dso_local i32 @dstr_free(%struct.dstr*) #1

declare dso_local i32 @dstr_ncopy(%struct.dstr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
