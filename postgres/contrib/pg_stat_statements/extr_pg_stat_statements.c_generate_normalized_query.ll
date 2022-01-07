; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c_generate_normalized_query.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c_generate_normalized_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"$%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*, i8*, i32, i32*, i32)* @generate_normalized_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @generate_normalized_query(%struct.TYPE_6__* %0, i8* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @fill_in_constant_lengths(%struct.TYPE_6__* %24, i8* %25, i32 %26)
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %31, 10
  %33 = add nsw i32 %28, %32
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i8* @palloc(i32 %35)
  store i8* %36, i8** %11, align 8
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %110, %5
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %113

43:                                               ; preds = %37
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %20, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %20, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %20, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %21, align 4
  %63 = load i32, i32* %21, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %43
  br label %110

66:                                               ; preds = %43
  %67 = load i32, i32* %20, align 4
  %68 = load i32, i32* %18, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* %15, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp sge i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @Assert(i32 %75)
  %77 = load i8*, i8** %11, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @memcpy(i8* %80, i8* %84, i32 %85)
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %17, align 4
  %90 = load i8*, i8** %11, align 8
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %95, %98
  %100 = call i64 @sprintf(i8* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %20, align 4
  %106 = load i32, i32* %21, align 4
  %107 = add nsw i32 %105, %106
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %20, align 4
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %21, align 4
  store i32 %109, i32* %19, align 4
  br label %110

110:                                              ; preds = %66, %65
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  br label %37

113:                                              ; preds = %37
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %16, align 4
  %116 = sub nsw i32 %114, %115
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp sge i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @Assert(i32 %119)
  %121 = load i8*, i8** %11, align 8
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8*, i8** %7, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @memcpy(i8* %124, i8* %128, i32 %129)
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %17, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %17, align 4
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp sle i32 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @Assert(i32 %137)
  %139 = load i8*, i8** %11, align 8
  %140 = load i32, i32* %17, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  store i8 0, i8* %142, align 1
  %143 = load i32, i32* %17, align 4
  %144 = load i32*, i32** %9, align 8
  store i32 %143, i32* %144, align 4
  %145 = load i8*, i8** %11, align 8
  ret i8* %145
}

declare dso_local i32 @fill_in_constant_lengths(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
