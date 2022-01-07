; ModuleID = '/home/carl/AnghaBench/php-src/ext/bcmath/libbcmath/src/extr_str2num.c_bc_str2num.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/bcmath/libbcmath/src/extr_str2num.c_bc_str2num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8* }

@FALSE = common dso_local global i8 0, align 1
@_zero_ = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8 0, align 1
@MINUS = common dso_local global i8* null, align 8
@PLUS = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bc_str2num(%struct.TYPE_7__** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %14 = call i32 @bc_free_num(%struct.TYPE_7__** %13)
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %10, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load i8, i8* @FALSE, align 1
  store i8 %16, i8* %12, align 1
  %17 = load i8*, i8** %10, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 43
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load i8*, i8** %10, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 45
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %3
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %10, align 8
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %35, %29
  %31 = load i8*, i8** %10, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 48
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %10, align 8
  br label %30

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %45, %38
  %40 = load i8*, i8** %10, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = call i64 @isdigit(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %10, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %39

50:                                               ; preds = %39
  %51 = load i8*, i8** %10, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 46
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %10, align 8
  br label %58

58:                                               ; preds = %55, %50
  br label %59

59:                                               ; preds = %65, %58
  %60 = load i8*, i8** %10, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = call i64 @isdigit(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %10, align 8
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %59

70:                                               ; preds = %59
  %71 = load i8*, i8** %10, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %76, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75, %70
  %81 = load i32, i32* @_zero_, align 4
  %82 = call i32 @BCG(i32 %81)
  %83 = call %struct.TYPE_7__* @bc_copy_num(i32 %82)
  %84 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %84, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %4, align 4
  br label %196

90:                                               ; preds = %75
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @MIN(i32 %91, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i8, i8* @TRUE, align 1
  store i8 %97, i8* %12, align 1
  store i32 1, i32* %8, align 4
  br label %98

98:                                               ; preds = %96, %90
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call %struct.TYPE_7__* @bc_new_num(i32 %99, i32 %100)
  %102 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %102, align 8
  %103 = load i8*, i8** %6, align 8
  store i8* %103, i8** %10, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 45
  br i1 %107, label %108, label %115

108:                                              ; preds = %98
  %109 = load i8*, i8** @MINUS, align 8
  %110 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  store i8* %109, i8** %112, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %10, align 8
  br label %128

115:                                              ; preds = %98
  %116 = load i8*, i8** @PLUS, align 8
  %117 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  store i8* %116, i8** %119, align 8
  %120 = load i8*, i8** %10, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 43
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load i8*, i8** %10, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %10, align 8
  br label %127

127:                                              ; preds = %124, %115
  br label %128

128:                                              ; preds = %127, %108
  br label %129

129:                                              ; preds = %134, %128
  %130 = load i8*, i8** %10, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 48
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i8*, i8** %10, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %10, align 8
  br label %129

137:                                              ; preds = %129
  %138 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  store i8* %141, i8** %11, align 8
  %142 = load i8, i8* %12, align 1
  %143 = icmp ne i8 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load i8*, i8** %11, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %11, align 8
  store i8 0, i8* %145, align 1
  store i32 0, i32* %8, align 4
  br label %147

147:                                              ; preds = %144, %137
  br label %148

148:                                              ; preds = %160, %147
  %149 = load i32, i32* %8, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %148
  %152 = load i8*, i8** %10, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %10, align 8
  %154 = load i8, i8* %152, align 1
  %155 = sext i8 %154 to i32
  %156 = call i8* @CH_VAL(i32 %155)
  %157 = ptrtoint i8* %156 to i8
  %158 = load i8*, i8** %11, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %11, align 8
  store i8 %157, i8* %158, align 1
  br label %160

160:                                              ; preds = %151
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %8, align 4
  br label %148

163:                                              ; preds = %148
  %164 = load i32, i32* %9, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %185

166:                                              ; preds = %163
  %167 = load i8*, i8** %10, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %10, align 8
  br label %169

169:                                              ; preds = %181, %166
  %170 = load i32, i32* %9, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %169
  %173 = load i8*, i8** %10, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %10, align 8
  %175 = load i8, i8* %173, align 1
  %176 = sext i8 %175 to i32
  %177 = call i8* @CH_VAL(i32 %176)
  %178 = ptrtoint i8* %177 to i8
  %179 = load i8*, i8** %11, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %11, align 8
  store i8 %178, i8* %179, align 1
  br label %181

181:                                              ; preds = %172
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %9, align 4
  br label %169

184:                                              ; preds = %169
  br label %185

185:                                              ; preds = %184, %163
  %186 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %186, align 8
  %188 = call i64 @bc_is_zero(%struct.TYPE_7__* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load i8*, i8** @PLUS, align 8
  %192 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  store i8* %191, i8** %194, align 8
  br label %195

195:                                              ; preds = %190, %185
  store i32 1, i32* %4, align 4
  br label %196

196:                                              ; preds = %195, %80
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local i32 @bc_free_num(%struct.TYPE_7__**) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local %struct.TYPE_7__* @bc_copy_num(i32) #1

declare dso_local i32 @BCG(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local %struct.TYPE_7__* @bc_new_num(i32, i32) #1

declare dso_local i8* @CH_VAL(i32) #1

declare dso_local i64 @bc_is_zero(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
