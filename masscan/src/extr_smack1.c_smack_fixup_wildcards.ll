; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_fixup_wildcards.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_smack1.c_smack_fixup_wildcards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SMACK = type { i64, i64, i64*, i64*, i64, %struct.SmackPattern** }
%struct.SmackPattern = type { i64, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SMACK*)* @smack_fixup_wildcards to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smack_fixup_wildcards(%struct.SMACK* %0) #0 {
  %2 = alloca %struct.SMACK*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.SmackPattern*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.SMACK* %0, %struct.SMACK** %2, align 8
  store i64 0, i64* %3, align 8
  br label %13

13:                                               ; preds = %120, %1
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %16 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %123

19:                                               ; preds = %13
  %20 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %21 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %20, i32 0, i32 5
  %22 = load %struct.SmackPattern**, %struct.SmackPattern*** %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.SmackPattern*, %struct.SmackPattern** %22, i64 %23
  %25 = load %struct.SmackPattern*, %struct.SmackPattern** %24, align 8
  store %struct.SmackPattern* %25, %struct.SmackPattern** %5, align 8
  %26 = load %struct.SmackPattern*, %struct.SmackPattern** %5, align 8
  %27 = getelementptr inbounds %struct.SmackPattern, %struct.SmackPattern* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %120

31:                                               ; preds = %19
  store i64 0, i64* %4, align 8
  br label %32

32:                                               ; preds = %116, %31
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.SmackPattern*, %struct.SmackPattern** %5, align 8
  %35 = getelementptr inbounds %struct.SmackPattern, %struct.SmackPattern* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %119

38:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %39 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %40 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = shl i64 1, %41
  store i64 %42, i64* %8, align 8
  %43 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %44 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %11, align 8
  %50 = load %struct.SmackPattern*, %struct.SmackPattern** %5, align 8
  %51 = getelementptr inbounds %struct.SmackPattern, %struct.SmackPattern* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i64, i64* %4, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 42
  br i1 %57, label %58, label %59

58:                                               ; preds = %38
  br label %116

59:                                               ; preds = %38
  br label %60

60:                                               ; preds = %65, %59
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = load i64, i64* %4, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %67 = load %struct.SmackPattern*, %struct.SmackPattern** %5, align 8
  %68 = getelementptr inbounds %struct.SmackPattern, %struct.SmackPattern* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i64, i64* %4, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @smack_search_next(%struct.SMACK* %66, i32* %6, i8* %69, i32* %7, i32 %71)
  br label %60

73:                                               ; preds = %60
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, 16777215
  store i32 %75, i32* %6, align 4
  %76 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %77 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %76, i32 0, i32 3
  %78 = load i64*, i64** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %81 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = shl i32 %79, %83
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %78, i64 %85
  store i64* %86, i64** %9, align 8
  %87 = load i64*, i64** %9, align 8
  %88 = load %struct.SMACK*, %struct.SMACK** %2, align 8
  %89 = getelementptr inbounds %struct.SMACK, %struct.SMACK* %88, i32 0, i32 2
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 42
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i64, i64* %87, i64 %92
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %10, align 8
  store i64 0, i64* %12, align 8
  br label %95

95:                                               ; preds = %112, %73
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* %8, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %95
  %100 = load i64*, i64** %9, align 8
  %101 = load i64, i64* %12, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %11, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load i64, i64* %10, align 8
  %108 = load i64*, i64** %9, align 8
  %109 = load i64, i64* %12, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  store i64 %107, i64* %110, align 8
  br label %111

111:                                              ; preds = %106, %99
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %12, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %12, align 8
  br label %95

115:                                              ; preds = %95
  br label %116

116:                                              ; preds = %115, %58
  %117 = load i64, i64* %4, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %4, align 8
  br label %32

119:                                              ; preds = %32
  br label %120

120:                                              ; preds = %119, %30
  %121 = load i64, i64* %3, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %3, align 8
  br label %13

123:                                              ; preds = %13
  ret void
}

declare dso_local i32 @smack_search_next(%struct.SMACK*, i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
