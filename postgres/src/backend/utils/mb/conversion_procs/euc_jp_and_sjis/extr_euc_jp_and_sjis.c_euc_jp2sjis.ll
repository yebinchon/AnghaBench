; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc_jp_and_sjis/extr_euc_jp_and_sjis.c_euc_jp2sjis.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc_jp_and_sjis/extr_euc_jp_and_sjis.c_euc_jp2sjis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@PG_EUC_JP = common dso_local global i32 0, align 4
@SS2 = common dso_local global i32 0, align 4
@SS3 = common dso_local global i32 0, align 4
@ibmkanji = common dso_local global %struct.TYPE_2__* null, align 8
@PGSJISALTCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @euc_jp2sjis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @euc_jp2sjis(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %13

13:                                               ; preds = %218, %31, %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %226

16:                                               ; preds = %13
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @IS_HIGHBIT_SET(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* @PG_EUC_JP, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @report_invalid_encoding(i32 %27, i8* %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i32, i32* %7, align 4
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  store i8 %33, i8* %34, align 1
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  br label %13

40:                                               ; preds = %16
  %41 = load i32, i32* @PG_EUC_JP, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @pg_encoding_verifymb(i32 %41, i8* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* @PG_EUC_JP, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @report_invalid_encoding(i32 %48, i8* %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %40
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @SS2, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %5, align 8
  store i8 %59, i8* %60, align 1
  br label %218

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @SS3, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %161

66:                                               ; preds = %62
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  store i32 %70, i32* %7, align 4
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = shl i32 %75, 8
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp sge i32 %79, 62881
  br i1 %80, label %81, label %112

81:                                               ; preds = %66
  %82 = load i32, i32* %7, align 4
  %83 = sub nsw i32 %82, 84
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %84, 161
  %86 = ashr i32 %85, 1
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 223
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 129, i32 193
  %91 = add nsw i32 %86, %90
  %92 = add nsw i32 %91, 116
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %5, align 8
  store i8 %93, i8* %94, align 1
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, 1
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %81
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 224
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 97, i32 96
  br label %106

105:                                              ; preds = %81
  br label %106

106:                                              ; preds = %105, %100
  %107 = phi i32 [ %104, %100 ], [ 2, %105 ]
  %108 = sub nsw i32 %96, %107
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %5, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %5, align 8
  store i8 %109, i8* %110, align 1
  br label %160

112:                                              ; preds = %66
  store i32 0, i32* %11, align 4
  br label %113

113:                                              ; preds = %156, %112
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ibmkanji, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 65535
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp eq i32 %121, 65535
  br i1 %122, label %123, label %134

123:                                              ; preds = %113
  %124 = load i32, i32* @PGSJISALTCODE, align 4
  %125 = ashr i32 %124, 8
  %126 = trunc i32 %125 to i8
  %127 = load i8*, i8** %5, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %5, align 8
  store i8 %126, i8* %127, align 1
  %129 = load i32, i32* @PGSJISALTCODE, align 4
  %130 = and i32 %129, 255
  %131 = trunc i32 %130 to i8
  %132 = load i8*, i8** %5, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %5, align 8
  store i8 %131, i8* %132, align 1
  br label %159

134:                                              ; preds = %113
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %155

138:                                              ; preds = %134
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ibmkanji, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = ashr i32 %145, 8
  %147 = trunc i32 %146 to i8
  %148 = load i8*, i8** %5, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %5, align 8
  store i8 %147, i8* %148, align 1
  %150 = load i32, i32* %9, align 4
  %151 = and i32 %150, 255
  %152 = trunc i32 %151 to i8
  %153 = load i8*, i8** %5, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %5, align 8
  store i8 %152, i8* %153, align 1
  br label %159

155:                                              ; preds = %134
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %11, align 4
  br label %113

159:                                              ; preds = %138, %123
  br label %160

160:                                              ; preds = %159, %106
  br label %217

161:                                              ; preds = %62
  %162 = load i8*, i8** %4, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 1
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %7, align 4
  %167 = shl i32 %166, 8
  %168 = load i32, i32* %8, align 4
  %169 = and i32 %168, 255
  %170 = or i32 %167, %169
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp sge i32 %171, 62881
  br i1 %172, label %173, label %188

173:                                              ; preds = %161
  %174 = load i32, i32* %7, align 4
  %175 = sub nsw i32 %174, 84
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = sub nsw i32 %176, 161
  %178 = ashr i32 %177, 1
  %179 = load i32, i32* %7, align 4
  %180 = icmp slt i32 %179, 223
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 129, i32 193
  %183 = add nsw i32 %178, %182
  %184 = add nsw i32 %183, 111
  %185 = trunc i32 %184 to i8
  %186 = load i8*, i8** %5, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %5, align 8
  store i8 %185, i8* %186, align 1
  br label %200

188:                                              ; preds = %161
  %189 = load i32, i32* %7, align 4
  %190 = sub nsw i32 %189, 161
  %191 = ashr i32 %190, 1
  %192 = load i32, i32* %7, align 4
  %193 = icmp slt i32 %192, 223
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i32 129, i32 193
  %196 = add nsw i32 %191, %195
  %197 = trunc i32 %196 to i8
  %198 = load i8*, i8** %5, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %5, align 8
  store i8 %197, i8* %198, align 1
  br label %200

200:                                              ; preds = %188, %173
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %7, align 4
  %203 = and i32 %202, 1
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %200
  %206 = load i32, i32* %8, align 4
  %207 = icmp slt i32 %206, 224
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i32 97, i32 96
  br label %211

210:                                              ; preds = %200
  br label %211

211:                                              ; preds = %210, %205
  %212 = phi i32 [ %209, %205 ], [ 2, %210 ]
  %213 = sub nsw i32 %201, %212
  %214 = trunc i32 %213 to i8
  %215 = load i8*, i8** %5, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %5, align 8
  store i8 %214, i8* %215, align 1
  br label %217

217:                                              ; preds = %211, %160
  br label %218

218:                                              ; preds = %217, %56
  %219 = load i32, i32* %10, align 4
  %220 = load i8*, i8** %4, align 8
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds i8, i8* %220, i64 %221
  store i8* %222, i8** %4, align 8
  %223 = load i32, i32* %10, align 4
  %224 = load i32, i32* %6, align 4
  %225 = sub nsw i32 %224, %223
  store i32 %225, i32* %6, align 4
  br label %13

226:                                              ; preds = %13
  %227 = load i8*, i8** %5, align 8
  store i8 0, i8* %227, align 1
  ret void
}

declare dso_local i32 @IS_HIGHBIT_SET(i32) #1

declare dso_local i32 @report_invalid_encoding(i32, i8*, i32) #1

declare dso_local i32 @pg_encoding_verifymb(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
