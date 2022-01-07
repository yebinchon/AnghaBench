; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_claims.c_kuhl_m_kerberos_claims_displayClaimsSet.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_claims.c_kuhl_m_kerberos_claims_displayClaimsSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i64* }
%struct.TYPE_12__ = type { i64* }
%struct.TYPE_11__ = type { i64* }
%struct.TYPE_10__ = type { i64, i64* }

@.str = private unnamed_addr constant [12 x i32] [i32 67, i32 108, i32 97, i32 105, i32 109, i32 115, i32 91, i32 37, i32 117, i32 93, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [19 x i32] [i32 32, i32 32, i32 83, i32 111, i32 117, i32 114, i32 99, i32 101, i32 84, i32 121, i32 112, i32 101, i32 58, i32 32, i32 37, i32 104, i32 117, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [15 x i32] [i32 32, i32 32, i32 69, i32 110, i32 116, i32 114, i32 105, i32 101, i32 115, i32 91, i32 37, i32 117, i32 93, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [12 x i32] [i32 32, i32 32, i32 32, i32 32, i32 73, i32 100, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [18 x i32] [i32 32, i32 32, i32 32, i32 32, i32 91, i32 73, i32 78, i32 84, i32 54, i32 52, i32 32, i32 93, i32 32, i32 37, i32 108, i32 108, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [19 x i32] [i32 32, i32 32, i32 32, i32 32, i32 91, i32 85, i32 73, i32 78, i32 84, i32 54, i32 52, i32 93, i32 32, i32 37, i32 117, i32 108, i32 108, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [17 x i32] [i32 32, i32 32, i32 32, i32 32, i32 91, i32 83, i32 84, i32 82, i32 73, i32 78, i32 71, i32 93, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [22 x i32] [i32 32, i32 32, i32 32, i32 32, i32 91, i32 66, i32 79, i32 79, i32 76, i32 32, i32 32, i32 93, i32 32, i32 37, i32 48, i32 49, i32 54, i32 108, i32 108, i32 120, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [13 x i32] [i32 32, i32 32, i32 32, i32 32, i32 91, i32 33, i32 37, i32 104, i32 117, i32 33, i32 93, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_kerberos_claims_displayClaimsSet(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %171, %1
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %174

12:                                               ; preds = %6
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @kprintf(i8* bitcast ([12 x i32]* @.str to i8*), i64 %13)
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @kprintf(i8* bitcast ([19 x i32]* @.str.1 to i8*), i64 %21)
  store i64 0, i64* %4, align 8
  br label %23

23:                                               ; preds = %167, %12
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %24, %31
  br i1 %32, label %33, label %170

33:                                               ; preds = %23
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @kprintf(i8* bitcast ([15 x i32]* @.str.2 to i8*), i64 %34)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @kprintf(i8* bitcast ([12 x i32]* @.str.3 to i8*), i64 %46)
  store i64 0, i64* %5, align 8
  br label %48

48:                                               ; preds = %163, %33
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = load i64, i64* %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %49, %62
  br i1 %63, label %64, label %166

64:                                               ; preds = %48
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = load i64, i64* %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = load i64, i64* %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  switch i32 %75, label %148 [
    i32 130, label %76
    i32 128, label %94
    i32 129, label %112
    i32 131, label %130
  ]

76:                                               ; preds = %64
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = load i64, i64* %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = load i64, i64* %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* %5, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @kprintf(i8* bitcast ([18 x i32]* @.str.4 to i8*), i64 %92)
  br label %162

94:                                               ; preds = %64
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = load i64, i64* %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = load i64, i64* %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* %5, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @kprintf(i8* bitcast ([19 x i32]* @.str.5 to i8*), i64 %110)
  br label %162

112:                                              ; preds = %64
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = load i64, i64* %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = load i64, i64* %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = load i64, i64* %5, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @kprintf(i8* bitcast ([17 x i32]* @.str.6 to i8*), i64 %128)
  br label %162

130:                                              ; preds = %64
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = load i64, i64* %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = load i64, i64* %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* %5, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @kprintf(i8* bitcast ([22 x i32]* @.str.7 to i8*), i64 %146)
  br label %162

148:                                              ; preds = %64
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = load i64, i64* %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %154, align 8
  %156 = load i64, i64* %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = call i32 @kprintf(i8* bitcast ([13 x i32]* @.str.8 to i8*), i64 %160)
  br label %162

162:                                              ; preds = %148, %130, %112, %94, %76
  br label %163

163:                                              ; preds = %162
  %164 = load i64, i64* %5, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %5, align 8
  br label %48

166:                                              ; preds = %48
  br label %167

167:                                              ; preds = %166
  %168 = load i64, i64* %4, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %4, align 8
  br label %23

170:                                              ; preds = %23
  br label %171

171:                                              ; preds = %170
  %172 = load i64, i64* %3, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %3, align 8
  br label %6

174:                                              ; preds = %6
  ret void
}

declare dso_local i32 @kprintf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
