; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_lookup_getstringtoken.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_text-lookup.c_lookup_getstringtoken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexer = type { i8* }
%struct.strref = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lexer*, %struct.strref*)* @lookup_getstringtoken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lookup_getstringtoken(%struct.lexer* %0, %struct.strref* %1) #0 {
  %3 = alloca %struct.lexer*, align 8
  %4 = alloca %struct.strref*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.lexer* %0, %struct.lexer** %3, align 8
  store %struct.strref* %1, %struct.strref** %4, align 8
  %7 = load %struct.lexer*, %struct.lexer** %3, align 8
  %8 = getelementptr inbounds %struct.lexer, %struct.lexer* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %42, %2
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 10
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi i1 [ false, %10 ], [ %19, %15 ]
  br i1 %21, label %22, label %45

22:                                               ; preds = %20
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 92
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %6, align 4
  br label %40

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  br label %45

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %30
  br label %42

41:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %5, align 8
  br label %10

45:                                               ; preds = %36, %20
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.lexer*, %struct.lexer** %3, align 8
  %48 = getelementptr inbounds %struct.lexer, %struct.lexer* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = ptrtoint i8* %46 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = load %struct.strref*, %struct.strref** %4, align 8
  %54 = getelementptr inbounds %struct.strref, %struct.strref* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load %struct.strref*, %struct.strref** %4, align 8
  %58 = getelementptr inbounds %struct.strref, %struct.strref* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 34
  br i1 %62, label %63, label %83

63:                                               ; preds = %45
  %64 = load %struct.strref*, %struct.strref** %4, align 8
  %65 = getelementptr inbounds %struct.strref, %struct.strref* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %65, align 8
  %68 = load %struct.strref*, %struct.strref** %4, align 8
  %69 = getelementptr inbounds %struct.strref, %struct.strref* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, -1
  store i64 %71, i64* %69, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 -1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 34
  br i1 %76, label %77, label %82

77:                                               ; preds = %63
  %78 = load %struct.strref*, %struct.strref** %4, align 8
  %79 = getelementptr inbounds %struct.strref, %struct.strref* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, -1
  store i64 %81, i64* %79, align 8
  br label %82

82:                                               ; preds = %77, %63
  br label %83

83:                                               ; preds = %82, %45
  %84 = load i8*, i8** %5, align 8
  %85 = load %struct.lexer*, %struct.lexer** %3, align 8
  %86 = getelementptr inbounds %struct.lexer, %struct.lexer* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
