; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls1_PRF.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_ssl.c_tls1_PRF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"MD5\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"SHA1\00", align 1
@D_SHOW_KEY_SOURCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"tls1_PRF out[%d]: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @tls1_PRF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tls1_PRF(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.gc_arena, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %21 = call i32 (...) @gc_new()
  %22 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %13, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = call i32* @md_kt_get(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %14, align 8
  %24 = call i32* @md_kt_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32* %24, i32** %15, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i64 @gc_malloc(i32 %25, i32 0, %struct.gc_arena* %13)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %20, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sdiv i32 %28, 2
  store i32 %29, i32* %16, align 4
  %30 = load i32*, i32** %9, align 8
  store i32* %30, i32** %18, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %16, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32* %34, i32** %19, align 8
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, 1
  %37 = load i32, i32* %16, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %16, align 4
  %39 = load i32*, i32** %14, align 8
  %40 = load i32*, i32** %18, align 8
  %41 = load i32, i32* %16, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @tls1_P_hash(i32* %39, i32* %40, i32 %41, i32* %42, i32 %43, i32* %44, i32 %45)
  %47 = load i32*, i32** %15, align 8
  %48 = load i32*, i32** %19, align 8
  %49 = load i32, i32* %16, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32*, i32** %20, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @tls1_P_hash(i32* %47, i32* %48, i32 %49, i32* %50, i32 %51, i32* %52, i32 %53)
  store i32 0, i32* %17, align 4
  br label %55

55:                                               ; preds = %71, %6
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load i32*, i32** %20, align 8
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = xor i32 %69, %64
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  br label %55

74:                                               ; preds = %55
  %75 = load i32*, i32** %20, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @secure_memzero(i32* %75, i32 %76)
  %78 = load i32, i32* @D_SHOW_KEY_SOURCE, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @format_hex(i32* %80, i32 %81, i32 0, %struct.gc_arena* %13)
  %83 = call i32 @dmsg(i32 %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %82)
  %84 = call i32 @gc_free(%struct.gc_arena* %13)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32* @md_kt_get(i8*) #1

declare dso_local i64 @gc_malloc(i32, i32, %struct.gc_arena*) #1

declare dso_local i32 @tls1_P_hash(i32*, i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @secure_memzero(i32*, i32) #1

declare dso_local i32 @dmsg(i32, i8*, i32, i32) #1

declare dso_local i32 @format_hex(i32*, i32, i32, %struct.gc_arena*) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
