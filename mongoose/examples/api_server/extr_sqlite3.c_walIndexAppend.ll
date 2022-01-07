; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_walIndexAppend.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_walIndexAppend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@HASHTABLE_NSLOT = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @walIndexAppend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walIndexAppend(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store volatile i32 %1, i32* %6, align 4
  store volatile i32 %2, i32* %7, align 4
  store volatile i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load volatile i32, i32* %6, align 4
  %18 = call i32 @walFramePage(i32 %17)
  %19 = call i32 @walHashGet(i32* %16, i32 %18, i32** %11, i32** %10, i32* %9)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @SQLITE_OK, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %104

23:                                               ; preds = %3
  %24 = load volatile i32, i32* %6, align 4
  %25 = load volatile i32, i32* %9, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @HASHTABLE_NSLOT, align 4
  %29 = sdiv i32 %28, 2
  %30 = add nsw i32 %29, 1
  %31 = icmp sle i32 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %13, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %53

36:                                               ; preds = %23
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* @HASHTABLE_NSLOT, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = ptrtoint i32* %40 to i64
  %44 = ptrtoint i32* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %15, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = bitcast i32* %49 to i8*
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @memset(i8* %50, i32 0, i32 %51)
  br label %53

53:                                               ; preds = %36, %23
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load volatile i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %53
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @walCleanupHash(i32* %61)
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load volatile i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  br label %72

72:                                               ; preds = %60, %53
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %14, align 4
  %74 = load volatile i32, i32* %7, align 4
  %75 = call i32 @walHash(i32 %74)
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %90, %72
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load volatile i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %76
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %14, align 4
  %86 = icmp eq i32 %84, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %88, i32* %4, align 4
  br label %106

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @walNextHash(i32 %91)
  store i32 %92, i32* %12, align 4
  br label %76

93:                                               ; preds = %76
  %94 = load volatile i32, i32* %7, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store volatile i32 %94, i32* %98, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store volatile i32 %99, i32* %103, align 4
  br label %104

104:                                              ; preds = %93, %3
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %87
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @walHashGet(i32*, i32, i32**, i32**, i32*) #1

declare dso_local i32 @walFramePage(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @walCleanupHash(i32*) #1

declare dso_local i32 @walHash(i32) #1

declare dso_local i32 @walNextHash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
