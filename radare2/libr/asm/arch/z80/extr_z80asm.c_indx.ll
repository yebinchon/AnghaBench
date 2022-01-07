; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/z80/extr_z80asm.c_indx.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/z80/extr_z80asm.c_indx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"unexpected end of line\0A\00", align 1
@comma = common dso_local global i32 0, align 4
@mem_delimiter = common dso_local global i8 0, align 1
@sp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i32, i8**)* @indx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @indx(i8** %0, i8** %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %14 = load i8**, i8*** %6, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = call i8* @delspc(i8* %15)
  %17 = load i8**, i8*** %6, align 8
  store i8* %16, i8** %17, align 8
  %18 = load i8**, i8*** %6, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @eprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %195

27:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %195

28:                                               ; preds = %4
  %29 = load i32, i32* @comma, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8**, i8*** %6, align 8
  %33 = call i32 @rd_comma(i8** %32)
  br label %34

34:                                               ; preds = %31, %28
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %191, %34
  %36 = load i8**, i8*** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %194

42:                                               ; preds = %35
  %43 = load i8**, i8*** %6, align 8
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %11, align 8
  %45 = load i8**, i8*** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %50 = load i8**, i8*** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %42
  br label %191

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %146, %59
  %61 = load i8*, i8** %12, align 8
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %149

64:                                               ; preds = %60
  %65 = load i8*, i8** %12, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 32
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i8*, i8** %11, align 8
  %71 = call i8* @delspc(i8* %70)
  store i8* %71, i8** %11, align 8
  br label %146

72:                                               ; preds = %64
  %73 = load i8*, i8** %12, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 42
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load i8*, i8** %11, align 8
  %79 = load i8**, i8*** %9, align 8
  store i8* %78, i8** %79, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  store i8 %82, i8* @mem_delimiter, align 1
  %83 = load i8, i8* @mem_delimiter, align 1
  %84 = load i32, i32* @sp, align 4
  %85 = call i32 @rd_expr(i8** %11, i8 signext %83, i32* null, i32 %84, i32 0)
  store i32 1, i32* %13, align 4
  br label %145

86:                                               ; preds = %72
  %87 = load i8*, i8** %12, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 43
  br i1 %90, label %91, label %111

91:                                               ; preds = %86
  %92 = load i8*, i8** %11, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 43
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load i8*, i8** %11, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 45
  br i1 %100, label %101, label %110

101:                                              ; preds = %96, %91
  %102 = load i8*, i8** %11, align 8
  %103 = load i8**, i8*** %9, align 8
  store i8* %102, i8** %103, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  store i8 %106, i8* @mem_delimiter, align 1
  %107 = load i8, i8* @mem_delimiter, align 1
  %108 = load i32, i32* @sp, align 4
  %109 = call i32 @rd_expr(i8** %11, i8 signext %107, i32* null, i32 %108, i32 0)
  br label %110

110:                                              ; preds = %101, %96
  br label %144

111:                                              ; preds = %86
  %112 = load i8*, i8** %12, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = load i8*, i8** %11, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %114, %117
  br i1 %118, label %139, label %119

119:                                              ; preds = %111
  %120 = load i8*, i8** %12, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp sge i32 %122, 97
  br i1 %123, label %124, label %142

124:                                              ; preds = %119
  %125 = load i8*, i8** %12, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp sle i32 %127, 122
  br i1 %128, label %129, label %142

129:                                              ; preds = %124
  %130 = load i8*, i8** %12, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = sub nsw i32 %132, 97
  %134 = add nsw i32 %133, 65
  %135 = load i8*, i8** %11, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %134, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %129, %111
  %140 = load i8*, i8** %11, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %11, align 8
  br label %143

142:                                              ; preds = %129, %124, %119
  br label %149

143:                                              ; preds = %139
  br label %144

144:                                              ; preds = %143, %110
  br label %145

145:                                              ; preds = %144, %77
  br label %146

146:                                              ; preds = %145, %69
  %147 = load i8*, i8** %12, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %12, align 8
  br label %60

149:                                              ; preds = %142, %60
  %150 = load i8*, i8** %12, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %166, label %154

154:                                              ; preds = %149
  %155 = load i8*, i8** %12, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 -1
  %157 = load i8, i8* %156, align 1
  %158 = call i64 @isalnum(i8 zeroext %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %154
  %161 = load i8*, i8** %11, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  %164 = call i64 @isalnum(i8 zeroext %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %160, %149
  br label %191

167:                                              ; preds = %160, %154
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %167
  %171 = load i8*, i8** %11, align 8
  %172 = call i8* @delspc(i8* %171)
  store i8* %172, i8** %11, align 8
  %173 = load i8*, i8** %11, align 8
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %170
  %178 = load i8*, i8** %11, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %180, 44
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  br label %191

183:                                              ; preds = %177, %170
  br label %184

184:                                              ; preds = %183, %167
  %185 = load i8*, i8** %11, align 8
  %186 = load i8**, i8*** %6, align 8
  store i8* %185, i8** %186, align 8
  %187 = load i32, i32* @comma, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* @comma, align 4
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %5, align 4
  br label %195

191:                                              ; preds = %182, %166, %58
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %10, align 4
  br label %35

194:                                              ; preds = %35
  store i32 0, i32* %5, align 4
  br label %195

195:                                              ; preds = %194, %184, %27, %25
  %196 = load i32, i32* %5, align 4
  ret i32 %196
}

declare dso_local i8* @delspc(i8*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @rd_comma(i8**) #1

declare dso_local i32 @rd_expr(i8**, i8 signext, i32*, i32, i32) #1

declare dso_local i64 @isalnum(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
