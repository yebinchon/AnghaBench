; ModuleID = '/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_rdrand.c_engine_load_rdrand_int.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_rdrand.c_engine_load_rdrand_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPENSSL_ia32cap_P = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @engine_load_rdrand_int() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32*, i32** @OPENSSL_ia32cap_P, align 8
  %3 = getelementptr inbounds i32, i32* %2, i64 1
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 1073741824
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %0
  %8 = call i32* (...) @ENGINE_rdrand()
  store i32* %8, i32** %1, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  br label %18

12:                                               ; preds = %7
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @ENGINE_add(i32* %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @ENGINE_free(i32* %15)
  %17 = call i32 (...) @ERR_clear_error()
  br label %18

18:                                               ; preds = %11, %12, %0
  ret void
}

declare dso_local i32* @ENGINE_rdrand(...) #1

declare dso_local i32 @ENGINE_add(i32*) #1

declare dso_local i32 @ENGINE_free(i32*) #1

declare dso_local i32 @ERR_clear_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
