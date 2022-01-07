; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass.c_thumb_selector.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass.c_thumb_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@err = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @thumb_selector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb_selector(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %5 = load i8**, i8*** %2, align 8
  %6 = call i32 @collect_list(i8** %5)
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %225, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 15
  br i1 %9, label %10, label %228

10:                                               ; preds = %7
  %11 = load i8**, i8*** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8*, i8** %11, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %228

18:                                               ; preds = %10
  %19 = load i8**, i8*** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @getreg(i8* %23)
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %27, 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %225

32:                                               ; preds = %18
  store i32 0, i32* @err, align 4
  %33 = load i8**, i8*** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @getnum(i8* %37)
  %39 = load i32, i32* @err, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  %43 = mul nsw i32 %42, 4
  %44 = shl i32 2, %43
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %225

47:                                               ; preds = %32
  store i32 0, i32* @err, align 4
  %48 = load i8**, i8*** %2, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @thumb_getshift(i8* %52)
  %54 = load i32, i32* @err, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %4, align 4
  %58 = mul nsw i32 %57, 4
  %59 = shl i32 3, %58
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  br label %225

62:                                               ; preds = %47
  %63 = load i8**, i8*** %2, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @getcoproc(i8* %67)
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load i32, i32* %4, align 4
  %72 = mul nsw i32 %71, 4
  %73 = shl i32 4, %72
  %74 = load i32, i32* %3, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %3, align 4
  br label %225

76:                                               ; preds = %62
  %77 = load i8**, i8*** %2, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @getcoprocreg(i8* %81)
  %83 = icmp ne i32 %82, -1
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load i32, i32* %4, align 4
  %86 = mul nsw i32 %85, 4
  %87 = shl i32 5, %86
  %88 = load i32, i32* %3, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %3, align 4
  br label %225

90:                                               ; preds = %76
  %91 = load i8**, i8*** %2, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @getregmemstart(i8* %95)
  %97 = icmp ne i32 %96, -1
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load i32, i32* %4, align 4
  %100 = mul nsw i32 %99, 4
  %101 = shl i32 6, %100
  %102 = load i32, i32* %3, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %3, align 4
  br label %225

104:                                              ; preds = %90
  %105 = load i8**, i8*** %2, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @getregmemstartend(i8* %109)
  %111 = icmp ne i32 %110, -1
  br i1 %111, label %112, label %118

112:                                              ; preds = %104
  %113 = load i32, i32* %4, align 4
  %114 = mul nsw i32 %113, 4
  %115 = shl i32 7, %114
  %116 = load i32, i32* %3, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %3, align 4
  br label %225

118:                                              ; preds = %104
  store i32 0, i32* @err, align 4
  %119 = load i8**, i8*** %2, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @getnummemend(i8* %123)
  %125 = load i32, i32* @err, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %118
  %128 = load i32, i32* %4, align 4
  %129 = mul nsw i32 %128, 4
  %130 = shl i32 8, %129
  %131 = load i32, i32* %3, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %3, align 4
  br label %225

133:                                              ; preds = %118
  store i32 0, i32* @err, align 4
  %134 = load i8**, i8*** %2, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @getnummemendbang(i8* %138)
  %140 = load i32, i32* @err, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %133
  %143 = load i32, i32* %4, align 4
  %144 = mul nsw i32 %143, 4
  %145 = shl i32 9, %144
  %146 = load i32, i32* %3, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %3, align 4
  br label %225

148:                                              ; preds = %133
  %149 = load i8**, i8*** %2, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @getregmembang(i8* %153)
  %155 = icmp ne i32 %154, -1
  br i1 %155, label %156, label %162

156:                                              ; preds = %148
  %157 = load i32, i32* %4, align 4
  %158 = mul nsw i32 %157, 4
  %159 = shl i32 10, %158
  %160 = load i32, i32* %3, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %3, align 4
  br label %225

162:                                              ; preds = %148
  %163 = load i8**, i8*** %2, align 8
  %164 = load i32, i32* %4, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @getreglist(i8* %167)
  %169 = icmp ne i32 %168, -1
  br i1 %169, label %170, label %176

170:                                              ; preds = %162
  %171 = load i32, i32* %4, align 4
  %172 = mul nsw i32 %171, 4
  %173 = shl i32 11, %172
  %174 = load i32, i32* %3, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %3, align 4
  br label %225

176:                                              ; preds = %162
  %177 = load i8**, i8*** %2, align 8
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @getregmemend(i8* %181)
  %183 = icmp ne i32 %182, -1
  br i1 %183, label %184, label %190

184:                                              ; preds = %176
  %185 = load i32, i32* %4, align 4
  %186 = mul nsw i32 %185, 4
  %187 = shl i32 12, %186
  %188 = load i32, i32* %3, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %3, align 4
  br label %225

190:                                              ; preds = %176
  %191 = load i8**, i8*** %2, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %191, i64 %193
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @getshiftmemend(i8* %195)
  %197 = icmp ne i32 %196, -1
  br i1 %197, label %198, label %204

198:                                              ; preds = %190
  %199 = load i32, i32* %4, align 4
  %200 = mul nsw i32 %199, 4
  %201 = shl i32 13, %200
  %202 = load i32, i32* %3, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %3, align 4
  br label %225

204:                                              ; preds = %190
  store i32 0, i32* @err, align 4
  %205 = load i8**, i8*** %2, align 8
  %206 = load i32, i32* %4, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %205, i64 %207
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @getnumbang(i8* %209)
  %211 = load i32, i32* @err, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %204
  %214 = load i32, i32* %4, align 4
  %215 = mul nsw i32 %214, 4
  %216 = shl i32 14, %215
  %217 = load i32, i32* %3, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %3, align 4
  br label %225

219:                                              ; preds = %204
  %220 = load i32, i32* %4, align 4
  %221 = mul nsw i32 %220, 4
  %222 = shl i32 15, %221
  %223 = load i32, i32* %3, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %3, align 4
  br label %225

225:                                              ; preds = %219, %213, %198, %184, %170, %156, %142, %127, %112, %98, %84, %70, %56, %41, %26
  %226 = load i32, i32* %4, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %4, align 4
  br label %7

228:                                              ; preds = %17, %7
  store i32 0, i32* @err, align 4
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local i32 @collect_list(i8**) #1

declare dso_local i32 @getreg(i8*) #1

declare dso_local i32 @getnum(i8*) #1

declare dso_local i32 @thumb_getshift(i8*) #1

declare dso_local i32 @getcoproc(i8*) #1

declare dso_local i32 @getcoprocreg(i8*) #1

declare dso_local i32 @getregmemstart(i8*) #1

declare dso_local i32 @getregmemstartend(i8*) #1

declare dso_local i32 @getnummemend(i8*) #1

declare dso_local i32 @getnummemendbang(i8*) #1

declare dso_local i32 @getregmembang(i8*) #1

declare dso_local i32 @getreglist(i8*) #1

declare dso_local i32 @getregmemend(i8*) #1

declare dso_local i32 @getshiftmemend(i8*) #1

declare dso_local i32 @getnumbang(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
