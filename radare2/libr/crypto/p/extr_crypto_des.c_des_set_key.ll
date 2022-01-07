; ModuleID = '/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_des.c_des_set_key.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_des.c_des_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i32* }
%struct.TYPE_4__ = type { i32 }

@DES_KEY_SIZE = common dso_local global i32 0, align 4
@st = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32, i32, i32)* @des_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_set_key(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @DES_KEY_SIZE, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %48

19:                                               ; preds = %5
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @be32(i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = call i32 @be32(i32* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* @DES_KEY_SIZE, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @st, i32 0, i32 0), align 8
  store i32 16, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @st, i32 0, i32 1), align 4
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = call i32 @r_des_permute_key(i32* %12, i32* %13)
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %44, %19
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 16
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load i32, i32* %14, align 4
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @st, i32 0, i32 3), align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @st, i32 0, i32 2), align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @r_des_round_key(i32 %34, i32* %38, i32* %42, i32* %12, i32* %13)
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %14, align 4
  br label %30

47:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %18
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @be32(i32*) #1

declare dso_local i32 @r_des_permute_key(i32*, i32*) #1

declare dso_local i32 @r_des_round_key(i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
