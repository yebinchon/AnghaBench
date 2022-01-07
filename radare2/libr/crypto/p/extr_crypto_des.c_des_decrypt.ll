; ModuleID = '/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_des.c_des_decrypt.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_des.c_des_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.des_state = type { i32, i8*, i8*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.des_state*, i32*, i32*)* @des_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_decrypt(%struct.des_state* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.des_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.des_state* %0, %struct.des_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.des_state*, %struct.des_state** %5, align 8
  %9 = icmp ne %struct.des_state* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %10, %3
  store i32 0, i32* %4, align 4
  br label %87

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = call i8* @be32(i32* %19)
  %21 = load %struct.des_state*, %struct.des_state** %5, align 8
  %22 = getelementptr inbounds %struct.des_state, %struct.des_state* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = call i8* @be32(i32* %24)
  %26 = load %struct.des_state*, %struct.des_state** %5, align 8
  %27 = getelementptr inbounds %struct.des_state, %struct.des_state* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.des_state*, %struct.des_state** %5, align 8
  %29 = getelementptr inbounds %struct.des_state, %struct.des_state* %28, i32 0, i32 1
  %30 = load %struct.des_state*, %struct.des_state** %5, align 8
  %31 = getelementptr inbounds %struct.des_state, %struct.des_state* %30, i32 0, i32 2
  %32 = call i32 @r_des_permute_block0(i8** %29, i8** %31)
  %33 = load %struct.des_state*, %struct.des_state** %5, align 8
  %34 = getelementptr inbounds %struct.des_state, %struct.des_state* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  br label %35

35:                                               ; preds = %64, %17
  %36 = load %struct.des_state*, %struct.des_state** %5, align 8
  %37 = getelementptr inbounds %struct.des_state, %struct.des_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 16
  br i1 %39, label %40, label %69

40:                                               ; preds = %35
  %41 = load %struct.des_state*, %struct.des_state** %5, align 8
  %42 = getelementptr inbounds %struct.des_state, %struct.des_state* %41, i32 0, i32 1
  %43 = load %struct.des_state*, %struct.des_state** %5, align 8
  %44 = getelementptr inbounds %struct.des_state, %struct.des_state* %43, i32 0, i32 2
  %45 = load %struct.des_state*, %struct.des_state** %5, align 8
  %46 = getelementptr inbounds %struct.des_state, %struct.des_state* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.des_state*, %struct.des_state** %5, align 8
  %49 = getelementptr inbounds %struct.des_state, %struct.des_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 15, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  %54 = load %struct.des_state*, %struct.des_state** %5, align 8
  %55 = getelementptr inbounds %struct.des_state, %struct.des_state* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.des_state*, %struct.des_state** %5, align 8
  %58 = getelementptr inbounds %struct.des_state, %struct.des_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 15, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  %63 = call i32 @r_des_round(i8** %42, i8** %44, i32* %53, i32* %62)
  br label %64

64:                                               ; preds = %40
  %65 = load %struct.des_state*, %struct.des_state** %5, align 8
  %66 = getelementptr inbounds %struct.des_state, %struct.des_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  br label %35

69:                                               ; preds = %35
  %70 = load %struct.des_state*, %struct.des_state** %5, align 8
  %71 = getelementptr inbounds %struct.des_state, %struct.des_state* %70, i32 0, i32 2
  %72 = load %struct.des_state*, %struct.des_state** %5, align 8
  %73 = getelementptr inbounds %struct.des_state, %struct.des_state* %72, i32 0, i32 1
  %74 = call i32 @r_des_permute_block1(i8** %71, i8** %73)
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load %struct.des_state*, %struct.des_state** %5, align 8
  %78 = getelementptr inbounds %struct.des_state, %struct.des_state* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @wbe32(i32* %76, i8* %79)
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  %83 = load %struct.des_state*, %struct.des_state** %5, align 8
  %84 = getelementptr inbounds %struct.des_state, %struct.des_state* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @wbe32(i32* %82, i8* %85)
  store i32 1, i32* %4, align 4
  br label %87

87:                                               ; preds = %69, %16
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i8* @be32(i32*) #1

declare dso_local i32 @r_des_permute_block0(i8**, i8**) #1

declare dso_local i32 @r_des_round(i8**, i8**, i32*, i32*) #1

declare dso_local i32 @r_des_permute_block1(i8**, i8**) #1

declare dso_local i32 @wbe32(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
