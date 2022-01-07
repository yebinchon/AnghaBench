; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_templ-payloads.c_payloads_datagram_add.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_templ-payloads.c_payloads_datagram_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PayloadsUDP = type { i32, i32, %struct.PayloadUDP_Item** }
%struct.PayloadUDP_Item = type { i64, i32, i32, i32, i32, i32 }
%struct.RangeList = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.PayloadsUDP*, i8*, i64, %struct.RangeList*, i32, i32)* @payloads_datagram_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @payloads_datagram_add(%struct.PayloadsUDP* %0, i8* %1, i64 %2, %struct.RangeList* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.PayloadsUDP*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.RangeList*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.PayloadUDP_Item*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.PayloadsUDP* %0, %struct.PayloadsUDP** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.RangeList* %3, %struct.RangeList** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %19 = load %struct.RangeList*, %struct.RangeList** %10, align 8
  %20 = call i64 @rangelist_count(%struct.RangeList* %19)
  store i64 %20, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %21

21:                                               ; preds = %174, %6
  %22 = load i64, i64* %16, align 8
  %23 = load i64, i64* %15, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %177

25:                                               ; preds = %21
  %26 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %7, align 8
  %27 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add i32 %28, 1
  %30 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %7, align 8
  %31 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ugt i32 %29, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %25
  %35 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %7, align 8
  %36 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = mul i32 %37, 2
  %39 = add i32 %38, 1
  %40 = zext i32 %39 to i64
  store i64 %40, i64* %17, align 8
  %41 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %7, align 8
  %42 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %41, i32 0, i32 2
  %43 = load %struct.PayloadUDP_Item**, %struct.PayloadUDP_Item*** %42, align 8
  %44 = load i64, i64* %17, align 8
  %45 = call %struct.PayloadUDP_Item** @REALLOCARRAY(%struct.PayloadUDP_Item** %43, i64 %44, i32 8)
  %46 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %7, align 8
  %47 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %46, i32 0, i32 2
  store %struct.PayloadUDP_Item** %45, %struct.PayloadUDP_Item*** %47, align 8
  %48 = load i64, i64* %17, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %7, align 8
  %51 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %34, %25
  %53 = load i64, i64* %9, align 8
  %54 = add i64 32, %53
  %55 = trunc i64 %54 to i32
  %56 = call %struct.PayloadUDP_Item* @MALLOC(i32 %55)
  store %struct.PayloadUDP_Item* %56, %struct.PayloadUDP_Item** %14, align 8
  %57 = load %struct.RangeList*, %struct.RangeList** %10, align 8
  %58 = load i64, i64* %16, align 8
  %59 = call i64 @rangelist_pick(%struct.RangeList* %57, i64 %58)
  %60 = load %struct.PayloadUDP_Item*, %struct.PayloadUDP_Item** %14, align 8
  %61 = getelementptr inbounds %struct.PayloadUDP_Item, %struct.PayloadUDP_Item* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.PayloadUDP_Item*, %struct.PayloadUDP_Item** %14, align 8
  %64 = getelementptr inbounds %struct.PayloadUDP_Item, %struct.PayloadUDP_Item* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load i64, i64* %9, align 8
  %66 = trunc i64 %65 to i32
  %67 = load %struct.PayloadUDP_Item*, %struct.PayloadUDP_Item** %14, align 8
  %68 = getelementptr inbounds %struct.PayloadUDP_Item, %struct.PayloadUDP_Item* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.PayloadUDP_Item*, %struct.PayloadUDP_Item** %14, align 8
  %70 = getelementptr inbounds %struct.PayloadUDP_Item, %struct.PayloadUDP_Item* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @memcpy(i32 %71, i8* %72, i64 %73)
  %75 = load i8*, i8** %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @partial_checksum(i8* %75, i64 %76)
  %78 = load %struct.PayloadUDP_Item*, %struct.PayloadUDP_Item** %14, align 8
  %79 = getelementptr inbounds %struct.PayloadUDP_Item, %struct.PayloadUDP_Item* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.PayloadUDP_Item*, %struct.PayloadUDP_Item** %14, align 8
  %82 = getelementptr inbounds %struct.PayloadUDP_Item, %struct.PayloadUDP_Item* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  store i32 0, i32* %18, align 4
  br label %83

83:                                               ; preds = %105, %52
  %84 = load i32, i32* %18, align 4
  %85 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %7, align 8
  %86 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ult i32 %84, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %83
  %90 = load %struct.PayloadUDP_Item*, %struct.PayloadUDP_Item** %14, align 8
  %91 = getelementptr inbounds %struct.PayloadUDP_Item, %struct.PayloadUDP_Item* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %7, align 8
  %94 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %93, i32 0, i32 2
  %95 = load %struct.PayloadUDP_Item**, %struct.PayloadUDP_Item*** %94, align 8
  %96 = load i32, i32* %18, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.PayloadUDP_Item*, %struct.PayloadUDP_Item** %95, i64 %97
  %99 = load %struct.PayloadUDP_Item*, %struct.PayloadUDP_Item** %98, align 8
  %100 = getelementptr inbounds %struct.PayloadUDP_Item, %struct.PayloadUDP_Item* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp sle i64 %92, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  br label %108

104:                                              ; preds = %89
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %18, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %18, align 4
  br label %83

108:                                              ; preds = %103, %83
  %109 = load i32, i32* %18, align 4
  %110 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %7, align 8
  %111 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ult i32 %109, %112
  br i1 %113, label %114, label %161

114:                                              ; preds = %108
  %115 = load %struct.PayloadUDP_Item*, %struct.PayloadUDP_Item** %14, align 8
  %116 = getelementptr inbounds %struct.PayloadUDP_Item, %struct.PayloadUDP_Item* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %7, align 8
  %119 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %118, i32 0, i32 2
  %120 = load %struct.PayloadUDP_Item**, %struct.PayloadUDP_Item*** %119, align 8
  %121 = load i32, i32* %18, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.PayloadUDP_Item*, %struct.PayloadUDP_Item** %120, i64 %122
  %124 = load %struct.PayloadUDP_Item*, %struct.PayloadUDP_Item** %123, align 8
  %125 = getelementptr inbounds %struct.PayloadUDP_Item, %struct.PayloadUDP_Item* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %117, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %114
  %129 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %7, align 8
  %130 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %129, i32 0, i32 2
  %131 = load %struct.PayloadUDP_Item**, %struct.PayloadUDP_Item*** %130, align 8
  %132 = load i32, i32* %18, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.PayloadUDP_Item*, %struct.PayloadUDP_Item** %131, i64 %133
  %135 = load %struct.PayloadUDP_Item*, %struct.PayloadUDP_Item** %134, align 8
  %136 = call i32 @free(%struct.PayloadUDP_Item* %135)
  store i32 0, i32* %13, align 4
  br label %160

137:                                              ; preds = %114
  %138 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %7, align 8
  %139 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %138, i32 0, i32 2
  %140 = load %struct.PayloadUDP_Item**, %struct.PayloadUDP_Item*** %139, align 8
  %141 = load i32, i32* %18, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.PayloadUDP_Item*, %struct.PayloadUDP_Item** %140, i64 %142
  %144 = getelementptr inbounds %struct.PayloadUDP_Item*, %struct.PayloadUDP_Item** %143, i64 1
  %145 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %7, align 8
  %146 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %145, i32 0, i32 2
  %147 = load %struct.PayloadUDP_Item**, %struct.PayloadUDP_Item*** %146, align 8
  %148 = load i32, i32* %18, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.PayloadUDP_Item*, %struct.PayloadUDP_Item** %147, i64 %149
  %151 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %7, align 8
  %152 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %18, align 4
  %155 = sub i32 %153, %154
  %156 = zext i32 %155 to i64
  %157 = mul i64 %156, 8
  %158 = trunc i64 %157 to i32
  %159 = call i32 @memmove(%struct.PayloadUDP_Item** %144, %struct.PayloadUDP_Item** %150, i32 %158)
  br label %160

160:                                              ; preds = %137, %128
  br label %161

161:                                              ; preds = %160, %108
  %162 = load %struct.PayloadUDP_Item*, %struct.PayloadUDP_Item** %14, align 8
  %163 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %7, align 8
  %164 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %163, i32 0, i32 2
  %165 = load %struct.PayloadUDP_Item**, %struct.PayloadUDP_Item*** %164, align 8
  %166 = load i32, i32* %18, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.PayloadUDP_Item*, %struct.PayloadUDP_Item** %165, i64 %167
  store %struct.PayloadUDP_Item* %162, %struct.PayloadUDP_Item** %168, align 8
  %169 = load i32, i32* %13, align 4
  %170 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %7, align 8
  %171 = getelementptr inbounds %struct.PayloadsUDP, %struct.PayloadsUDP* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add i32 %172, %169
  store i32 %173, i32* %171, align 8
  br label %174

174:                                              ; preds = %161
  %175 = load i64, i64* %16, align 8
  %176 = add nsw i64 %175, 1
  store i64 %176, i64* %16, align 8
  br label %21

177:                                              ; preds = %21
  %178 = load i32, i32* %13, align 4
  ret i32 %178
}

declare dso_local i64 @rangelist_count(%struct.RangeList*) #1

declare dso_local %struct.PayloadUDP_Item** @REALLOCARRAY(%struct.PayloadUDP_Item**, i64, i32) #1

declare dso_local %struct.PayloadUDP_Item* @MALLOC(i32) #1

declare dso_local i64 @rangelist_pick(%struct.RangeList*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @partial_checksum(i8*, i64) #1

declare dso_local i32 @free(%struct.PayloadUDP_Item*) #1

declare dso_local i32 @memmove(%struct.PayloadUDP_Item**, %struct.PayloadUDP_Item**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
