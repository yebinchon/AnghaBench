; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_env_set.c_env_set_add.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_env_set.c_env_set_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_set = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @env_set_add(%struct.env_set* %0, i8* %1) #0 {
  %3 = alloca %struct.env_set*, align 8
  %4 = alloca i8*, align 8
  store %struct.env_set* %0, %struct.env_set** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.env_set*, %struct.env_set** %3, align 8
  %6 = bitcast %struct.env_set* %5 to i8*
  %7 = call i32 @ASSERT(i8* %6)
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @ASSERT(i8* %8)
  %10 = load %struct.env_set*, %struct.env_set** %3, align 8
  %11 = bitcast %struct.env_set* %10 to i8*
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @env_set_add_nolock(i8* %11, i8* %12)
  ret void
}

declare dso_local i32 @ASSERT(i8*) #1

declare dso_local i32 @env_set_add_nolock(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
