; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_print.c_pretty_format_node_dump.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_print.c_pretty_format_node_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@INDENTSTOP = common dso_local global i32 0, align 4
@LINELEN = common dso_local global i32 0, align 4
@MAXINDENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pretty_format_node_dump(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [79 x i8], align 16
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = call i32 @initStringInfo(%struct.TYPE_4__* %4)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %200, %1
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %19, %10
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 %17
  store i8 32, i8* %18, align 1
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  br label %11

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %183, %22
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 78
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i8*, i8** %2, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %26, %23
  %35 = phi i1 [ false, %23 ], [ %33, %26 ]
  br i1 %35, label %36, label %188

36:                                               ; preds = %34
  %37 = load i8*, i8** %2, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 %43
  store i8 %41, i8* %44, align 1
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  switch i32 %49, label %182 [
    i32 125, label %50
    i32 41, label %94
    i32 123, label %126
    i32 58, label %162
  ]

50:                                               ; preds = %36
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 %56
  store i8 0, i8* %57, align 1
  %58 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 0
  %59 = call i32 @appendStringInfo(%struct.TYPE_4__* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %54, %50
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 %62
  store i8 125, i8* %63, align 1
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 %66
  store i8 0, i8* %67, align 1
  %68 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 0
  %69 = call i32 @appendStringInfo(%struct.TYPE_4__* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* %5, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %60
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = mul nsw i32 %75, 3
  %77 = call i32 @Min(i32 %76, i32 60)
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %72, %60
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %90, %78
  %82 = load i8*, i8** %2, align 8
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 32
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %81

93:                                               ; preds = %81
  br label %182

94:                                               ; preds = %36
  %95 = load i8*, i8** %2, align 8
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 41
  br i1 %102, label %103, label %125

103:                                              ; preds = %94
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 %106
  store i8 0, i8* %107, align 1
  %108 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 0
  %109 = call i32 @appendStringInfo(%struct.TYPE_4__* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %108)
  %110 = load i32, i32* %6, align 4
  %111 = sub nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %121, %103
  %113 = load i8*, i8** %2, align 8
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %113, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 32
  br i1 %120, label %121, label %124

121:                                              ; preds = %112
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %112

124:                                              ; preds = %112
  br label %125

125:                                              ; preds = %124, %94
  br label %182

126:                                              ; preds = %36
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 %132
  store i8 0, i8* %133, align 1
  %134 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 0
  %135 = call i32 @appendStringInfo(%struct.TYPE_4__* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %134)
  br label %136

136:                                              ; preds = %130, %126
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = mul nsw i32 %139, 3
  %141 = call i32 @Min(i32 %140, i32 60)
  store i32 %141, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %150, %136
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 %148
  store i8 32, i8* %149, align 1
  br label %150

150:                                              ; preds = %146
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4
  br label %142

153:                                              ; preds = %142
  %154 = load i8*, i8** %2, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 %160
  store i8 %158, i8* %161, align 1
  br label %182

162:                                              ; preds = %36
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %162
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 %168
  store i8 0, i8* %169, align 1
  %170 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 0
  %171 = call i32 @appendStringInfo(%struct.TYPE_4__* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %170)
  br label %172

172:                                              ; preds = %166, %162
  %173 = load i32, i32* %6, align 4
  store i32 %173, i32* %8, align 4
  %174 = load i8*, i8** %2, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 %180
  store i8 %178, i8* %181, align 1
  br label %182

182:                                              ; preds = %36, %172, %153, %125, %93
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %8, align 4
  br label %23

188:                                              ; preds = %34
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 %190
  store i8 0, i8* %191, align 1
  %192 = load i8*, i8** %2, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %188
  br label %203

200:                                              ; preds = %188
  %201 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 0
  %202 = call i32 @appendStringInfo(%struct.TYPE_4__* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %201)
  br label %10

203:                                              ; preds = %199
  %204 = load i32, i32* %8, align 4
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = getelementptr inbounds [79 x i8], [79 x i8]* %3, i64 0, i64 0
  %208 = call i32 @appendStringInfo(%struct.TYPE_4__* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %207)
  br label %209

209:                                              ; preds = %206, %203
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  ret i8* %211
}

declare dso_local i32 @initStringInfo(%struct.TYPE_4__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @Min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
