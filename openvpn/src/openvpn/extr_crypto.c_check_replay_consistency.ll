; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_check_replay_consistency.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_check_replay_consistency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_type = type { i32 }

@M_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"--no-replay cannot be used with a CFB, OFB or AEAD mode cipher\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_replay_consistency(%struct.key_type* %0, i32 %1) #0 {
  %3 = alloca %struct.key_type*, align 8
  %4 = alloca i32, align 4
  store %struct.key_type* %0, %struct.key_type** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.key_type*, %struct.key_type** %3, align 8
  %6 = call i32 @ASSERT(%struct.key_type* %5)
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = load %struct.key_type*, %struct.key_type** %3, align 8
  %11 = getelementptr inbounds %struct.key_type, %struct.key_type* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @cipher_kt_mode_ofb_cfb(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load %struct.key_type*, %struct.key_type** %3, align 8
  %17 = getelementptr inbounds %struct.key_type, %struct.key_type* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @cipher_kt_mode_aead(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %9
  %22 = load i32, i32* @M_FATAL, align 4
  %23 = call i32 @msg(i32 %22, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %15, %2
  ret void
}

declare dso_local i32 @ASSERT(%struct.key_type*) #1

declare dso_local i64 @cipher_kt_mode_ofb_cfb(i32) #1

declare dso_local i64 @cipher_kt_mode_aead(i32) #1

declare dso_local i32 @msg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
