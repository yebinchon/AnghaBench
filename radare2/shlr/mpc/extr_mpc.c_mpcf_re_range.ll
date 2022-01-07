; ModuleID = '/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpcf_re_range.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpcf_re_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Invalid Regex Range Expression\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @mpcf_re_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mpcf_re_range(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %9, align 8
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 94
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  store i32 %20, i32* %11, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @free(i8* %27)
  %29 = call i8* @mpc_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %2, align 8
  br label %232

30:                                               ; preds = %1
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 94
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @free(i8* %43)
  %45 = call i8* @mpc_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i8* %45, i8** %2, align 8
  br label %232

46:                                               ; preds = %36, %30
  %47 = call i8* @calloc(i32 1, i32 1)
  store i8* %47, i8** %12, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %213, %46
  %51 = load i64, i64* %5, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %216

56:                                               ; preds = %50
  %57 = load i8*, i8** %10, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 92
  br i1 %62, label %63, label %111

63:                                               ; preds = %56
  %64 = load i8*, i8** %10, align 8
  %65 = load i64, i64* %5, align 8
  %66 = add i64 %65, 1
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = call i8* @mpc_re_range_escape_char(i8 signext %68)
  store i8* %69, i8** %9, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %63
  %73 = load i8*, i8** %12, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @strlen(i8* %76)
  %78 = add nsw i32 %75, %77
  %79 = add nsw i32 %78, 1
  %80 = call i8* @realloc(i8* %73, i32 %79)
  store i8* %80, i8** %12, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @strcat(i8* %81, i8* %82)
  br label %108

84:                                               ; preds = %63
  %85 = load i8*, i8** %12, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 @strlen(i8* %86)
  %88 = add nsw i32 %87, 1
  %89 = add nsw i32 %88, 1
  %90 = call i8* @realloc(i8* %85, i32 %89)
  store i8* %90, i8** %12, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = call i32 @strlen(i8* %92)
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %91, i64 %95
  store i8 0, i8* %96, align 1
  %97 = load i8*, i8** %10, align 8
  %98 = load i64, i64* %5, align 8
  %99 = add i64 %98, 1
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = load i8*, i8** %12, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = call i32 @strlen(i8* %103)
  %105 = add nsw i32 %104, 0
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %102, i64 %106
  store i8 %101, i8* %107, align 1
  br label %108

108:                                              ; preds = %84, %72
  %109 = load i64, i64* %5, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %5, align 8
  br label %212

111:                                              ; preds = %56
  %112 = load i8*, i8** %10, align 8
  %113 = load i64, i64* %5, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 45
  br i1 %117, label %118, label %188

118:                                              ; preds = %111
  %119 = load i8*, i8** %10, align 8
  %120 = load i64, i64* %5, align 8
  %121 = add i64 %120, 1
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %118
  %127 = load i64, i64* %5, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %126, %118
  %130 = load i8*, i8** %12, align 8
  %131 = load i8*, i8** %12, align 8
  %132 = call i32 @strlen(i8* %131)
  %133 = call i32 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %134 = add nsw i32 %132, %133
  %135 = add nsw i32 %134, 1
  %136 = call i8* @realloc(i8* %130, i32 %135)
  store i8* %136, i8** %12, align 8
  %137 = load i8*, i8** %12, align 8
  %138 = call i32 @strcat(i8* %137, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %187

139:                                              ; preds = %126
  %140 = load i8*, i8** %10, align 8
  %141 = load i64, i64* %5, align 8
  %142 = sub i64 %141, 1
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %7, align 8
  %148 = load i8*, i8** %10, align 8
  %149 = load i64, i64* %5, align 8
  %150 = add i64 %149, 1
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  store i64 %155, i64* %8, align 8
  %156 = load i64, i64* %7, align 8
  store i64 %156, i64* %6, align 8
  br label %157

157:                                              ; preds = %183, %139
  %158 = load i64, i64* %6, align 8
  %159 = load i64, i64* %8, align 8
  %160 = icmp ule i64 %158, %159
  br i1 %160, label %161, label %186

161:                                              ; preds = %157
  %162 = load i8*, i8** %12, align 8
  %163 = load i8*, i8** %12, align 8
  %164 = call i32 @strlen(i8* %163)
  %165 = add nsw i32 %164, 1
  %166 = add nsw i32 %165, 1
  %167 = add nsw i32 %166, 1
  %168 = call i8* @realloc(i8* %162, i32 %167)
  store i8* %168, i8** %12, align 8
  %169 = load i8*, i8** %12, align 8
  %170 = load i8*, i8** %12, align 8
  %171 = call i32 @strlen(i8* %170)
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %169, i64 %173
  store i8 0, i8* %174, align 1
  %175 = load i64, i64* %6, align 8
  %176 = trunc i64 %175 to i8
  %177 = load i8*, i8** %12, align 8
  %178 = load i8*, i8** %12, align 8
  %179 = call i32 @strlen(i8* %178)
  %180 = add nsw i32 %179, 0
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %177, i64 %181
  store i8 %176, i8* %182, align 1
  br label %183

183:                                              ; preds = %161
  %184 = load i64, i64* %6, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %6, align 8
  br label %157

186:                                              ; preds = %157
  br label %187

187:                                              ; preds = %186, %129
  br label %211

188:                                              ; preds = %111
  %189 = load i8*, i8** %12, align 8
  %190 = load i8*, i8** %12, align 8
  %191 = call i32 @strlen(i8* %190)
  %192 = add nsw i32 %191, 1
  %193 = add nsw i32 %192, 1
  %194 = call i8* @realloc(i8* %189, i32 %193)
  store i8* %194, i8** %12, align 8
  %195 = load i8*, i8** %12, align 8
  %196 = load i8*, i8** %12, align 8
  %197 = call i32 @strlen(i8* %196)
  %198 = add nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %195, i64 %199
  store i8 0, i8* %200, align 1
  %201 = load i8*, i8** %10, align 8
  %202 = load i64, i64* %5, align 8
  %203 = getelementptr inbounds i8, i8* %201, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = load i8*, i8** %12, align 8
  %206 = load i8*, i8** %12, align 8
  %207 = call i32 @strlen(i8* %206)
  %208 = add nsw i32 %207, 0
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %205, i64 %209
  store i8 %204, i8* %210, align 1
  br label %211

211:                                              ; preds = %188, %187
  br label %212

212:                                              ; preds = %211, %108
  br label %213

213:                                              ; preds = %212
  %214 = load i64, i64* %5, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %5, align 8
  br label %50

216:                                              ; preds = %50
  %217 = load i32, i32* %11, align 4
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i8*, i8** %12, align 8
  %221 = call i8* @mpc_noneof(i8* %220)
  br label %225

222:                                              ; preds = %216
  %223 = load i8*, i8** %12, align 8
  %224 = call i8* @mpc_oneof(i8* %223)
  br label %225

225:                                              ; preds = %222, %219
  %226 = phi i8* [ %221, %219 ], [ %224, %222 ]
  store i8* %226, i8** %4, align 8
  %227 = load i8*, i8** %3, align 8
  %228 = call i32 @free(i8* %227)
  %229 = load i8*, i8** %12, align 8
  %230 = call i32 @free(i8* %229)
  %231 = load i8*, i8** %4, align 8
  store i8* %231, i8** %2, align 8
  br label %232

232:                                              ; preds = %225, %42, %26
  %233 = load i8*, i8** %2, align 8
  ret i8* %233
}

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @mpc_fail(i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @mpc_re_range_escape_char(i8 signext) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i8* @mpc_noneof(i8*) #1

declare dso_local i8* @mpc_oneof(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
