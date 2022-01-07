; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_b_dump.c_BIO_dump_indent_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_b_dump.c_BIO_dump_indent_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"%*s%04x - \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%02x%c\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@os_toascii = common dso_local global i8* null, align 8
@os_toebcdic = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BIO_dump_indent_cb(i32 (i8*, i64, i8*)* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32 (i8*, i64, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [289 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  store i32 (i8*, i64, i8*)* %0, i32 (i8*, i64, i8*)** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i8*, i8** %8, align 8
  store i8* %20, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 0, i32* %10, align 4
  br label %29

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %25, 64
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 64, i32* %10, align 4
  br label %28

28:                                               ; preds = %27, %24
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @DUMP_WIDTH_LESS_INDENT(i32 %30)
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %19, align 4
  %34 = sdiv i32 %32, %33
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %19, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load i32, i32* %16, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %16, align 4
  br label %43

43:                                               ; preds = %40, %29
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %203, %43
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %206

48:                                               ; preds = %44
  %49 = getelementptr inbounds [289 x i8], [289 x i8]* %13, i64 0, i64 0
  %50 = load i32, i32* %10, align 4
  %51 = trunc i32 %50 to i8
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %19, align 4
  %54 = mul nsw i32 %52, %53
  %55 = call i32 (i8*, i32, i8*, i8, ...) @BIO_snprintf(i8* %49, i32 289, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8 zeroext %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  store i32 %55, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %56

56:                                               ; preds = %107, %48
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %19, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %110

60:                                               ; preds = %56
  %61 = getelementptr inbounds [289 x i8], [289 x i8]* %13, i64 0, i64 0
  %62 = load i32, i32* %17, align 4
  %63 = call i64 @SPACE(i8* %61, i32 %62, i32 3)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %106

65:                                               ; preds = %60
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %19, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %9, align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = getelementptr inbounds [289 x i8], [289 x i8]* %13, i64 0, i64 0
  %75 = load i32, i32* %17, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = call i32 @strcpy(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %103

79:                                               ; preds = %65
  %80 = load i8*, i8** %11, align 8
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %19, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 255
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %18, align 1
  %93 = getelementptr inbounds [289 x i8], [289 x i8]* %13, i64 0, i64 0
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %18, align 1
  %98 = load i32, i32* %15, align 4
  %99 = icmp eq i32 %98, 7
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 45, i32 32
  %102 = call i32 (i8*, i32, i8*, i8, ...) @BIO_snprintf(i8* %96, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %97, i32 %101)
  br label %103

103:                                              ; preds = %79, %73
  %104 = load i32, i32* %17, align 4
  %105 = add nsw i32 %104, 3
  store i32 %105, i32* %17, align 4
  br label %106

106:                                              ; preds = %103, %60
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %15, align 4
  br label %56

110:                                              ; preds = %56
  %111 = getelementptr inbounds [289 x i8], [289 x i8]* %13, i64 0, i64 0
  %112 = load i32, i32* %17, align 4
  %113 = call i64 @SPACE(i8* %111, i32 %112, i32 2)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = getelementptr inbounds [289 x i8], [289 x i8]* %13, i64 0, i64 0
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = call i32 @strcpy(i8* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %121 = load i32, i32* %17, align 4
  %122 = add nsw i32 %121, 2
  store i32 %122, i32* %17, align 4
  br label %123

123:                                              ; preds = %115, %110
  store i32 0, i32* %15, align 4
  br label %124

124:                                              ; preds = %178, %123
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %19, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %181

128:                                              ; preds = %124
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %19, align 4
  %131 = mul nsw i32 %129, %130
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* %9, align 4
  %135 = icmp sge i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  br label %181

137:                                              ; preds = %128
  %138 = getelementptr inbounds [289 x i8], [289 x i8]* %13, i64 0, i64 0
  %139 = load i32, i32* %17, align 4
  %140 = call i64 @SPACE(i8* %138, i32 %139, i32 1)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %177

142:                                              ; preds = %137
  %143 = load i8*, i8** %11, align 8
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* %19, align 4
  %146 = mul nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %143, i64 %147
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = and i32 %153, 255
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %18, align 1
  %156 = load i8, i8* %18, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp sge i32 %157, 32
  br i1 %158, label %159, label %166

159:                                              ; preds = %142
  %160 = load i8, i8* %18, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp sle i32 %161, 126
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load i8, i8* %18, align 1
  %165 = zext i8 %164 to i32
  br label %167

166:                                              ; preds = %159, %142
  br label %167

167:                                              ; preds = %166, %163
  %168 = phi i32 [ %165, %163 ], [ 46, %166 ]
  %169 = trunc i32 %168 to i8
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %17, align 4
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds [289 x i8], [289 x i8]* %13, i64 0, i64 %172
  store i8 %169, i8* %173, align 1
  %174 = load i32, i32* %17, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [289 x i8], [289 x i8]* %13, i64 0, i64 %175
  store i8 0, i8* %176, align 1
  br label %177

177:                                              ; preds = %167, %137
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %15, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %15, align 4
  br label %124

181:                                              ; preds = %136, %124
  %182 = getelementptr inbounds [289 x i8], [289 x i8]* %13, i64 0, i64 0
  %183 = load i32, i32* %17, align 4
  %184 = call i64 @SPACE(i8* %182, i32 %183, i32 1)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %181
  %187 = load i32, i32* %17, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %17, align 4
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds [289 x i8], [289 x i8]* %13, i64 0, i64 %189
  store i8 10, i8* %190, align 1
  %191 = load i32, i32* %17, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [289 x i8], [289 x i8]* %13, i64 0, i64 %192
  store i8 0, i8* %193, align 1
  br label %194

194:                                              ; preds = %186, %181
  %195 = load i32 (i8*, i64, i8*)*, i32 (i8*, i64, i8*)** %6, align 8
  %196 = getelementptr inbounds [289 x i8], [289 x i8]* %13, i64 0, i64 0
  %197 = load i32, i32* %17, align 4
  %198 = sext i32 %197 to i64
  %199 = load i8*, i8** %7, align 8
  %200 = call i32 %195(i8* %196, i64 %198, i8* %199)
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %12, align 4
  br label %203

203:                                              ; preds = %194
  %204 = load i32, i32* %14, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %14, align 4
  br label %44

206:                                              ; preds = %44
  %207 = load i32, i32* %12, align 4
  ret i32 %207
}

declare dso_local i32 @DUMP_WIDTH_LESS_INDENT(i32) #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i8 zeroext, ...) #1

declare dso_local i64 @SPACE(i8*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
