; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/1upkeyboards/sweet16/keymaps/switchtester/extr_switches.c_brand_name.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/1upkeyboards/sweet16/keymaps/switchtester/extr_switches.c_brand_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mechswitch = type { i32 }

@BRAND_NAMES = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @brand_name(i32 %0) #0 {
  %2 = alloca %struct.mechswitch, align 4
  %3 = getelementptr inbounds %struct.mechswitch, %struct.mechswitch* %2, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = load i8**, i8*** @BRAND_NAMES, align 8
  %5 = getelementptr inbounds %struct.mechswitch, %struct.mechswitch* %2, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = sub nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8*, i8** %4, i64 %8
  %10 = load i8*, i8** %9, align 8
  ret i8* %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
