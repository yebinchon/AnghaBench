; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_mbprint.c_utf_charcheck.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_mbprint.c_utf_charcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @utf_charcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf_charcheck(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 128
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %190

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 224
  %19 = icmp eq i32 %18, 192
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 192
  %26 = icmp eq i32 %25, 128
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, 31
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 2, i32* %2, align 4
  br label %190

35:                                               ; preds = %27, %20
  store i32 -1, i32* %2, align 4
  br label %190

36:                                               ; preds = %14
  %37 = load i8*, i8** %3, align 8
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 240
  %41 = icmp eq i32 %40, 224
  br i1 %41, label %42, label %116

42:                                               ; preds = %36
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 192
  %48 = icmp eq i32 %47, 128
  br i1 %48, label %49, label %115

49:                                               ; preds = %42
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 15
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 32
  %62 = icmp eq i32 %61, 32
  br i1 %62, label %63, label %115

63:                                               ; preds = %56, %49
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 192
  %69 = icmp eq i32 %68, 128
  br i1 %69, label %70, label %115

70:                                               ; preds = %63
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 15
  store i32 %75, i32* %4, align 4
  %76 = load i8*, i8** %3, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %79, 63
  %81 = shl i32 %80, 6
  %82 = load i8*, i8** %3, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 63
  %87 = or i32 %81, %86
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, 127
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp eq i32 %90, 15
  br i1 %91, label %92, label %106

92:                                               ; preds = %70
  %93 = load i32, i32* %5, align 4
  %94 = and i32 %93, 4094
  %95 = icmp eq i32 %94, 4094
  br i1 %95, label %113, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %5, align 4
  %98 = and i32 %97, 3968
  %99 = icmp eq i32 %98, 3456
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* %6, align 4
  %102 = icmp sge i32 %101, 48
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %6, align 4
  %105 = icmp sle i32 %104, 79
  br i1 %105, label %113, label %106

106:                                              ; preds = %103, %100, %96, %70
  %107 = load i32, i32* %4, align 4
  %108 = icmp eq i32 %107, 13
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i32, i32* %5, align 4
  %111 = and i32 %110, 2816
  %112 = icmp eq i32 %111, 2048
  br i1 %112, label %113, label %114

113:                                              ; preds = %109, %103, %92
  store i32 -1, i32* %2, align 4
  br label %190

114:                                              ; preds = %109, %106
  store i32 3, i32* %2, align 4
  br label %190

115:                                              ; preds = %63, %56, %42
  store i32 -1, i32* %2, align 4
  br label %190

116:                                              ; preds = %36
  %117 = load i8*, i8** %3, align 8
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, 248
  %121 = icmp eq i32 %120, 240
  br i1 %121, label %122, label %186

122:                                              ; preds = %116
  %123 = load i8*, i8** %3, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = and i32 %126, 7
  %128 = shl i32 %127, 2
  %129 = load i8*, i8** %3, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = and i32 %132, 48
  %134 = ashr i32 %133, 4
  %135 = or i32 %128, %134
  store i32 %135, i32* %7, align 4
  %136 = load i8*, i8** %3, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = and i32 %139, 192
  %141 = icmp eq i32 %140, 128
  br i1 %141, label %142, label %185

142:                                              ; preds = %122
  %143 = load i32, i32* %7, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %185

145:                                              ; preds = %142
  %146 = load i32, i32* %7, align 4
  %147 = icmp sle i32 %146, 16
  br i1 %147, label %148, label %185

148:                                              ; preds = %145
  %149 = load i8*, i8** %3, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 %152, 192
  %154 = icmp eq i32 %153, 128
  br i1 %154, label %155, label %185

155:                                              ; preds = %148
  %156 = load i8*, i8** %3, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 3
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = and i32 %159, 192
  %161 = icmp eq i32 %160, 128
  br i1 %161, label %162, label %185

162:                                              ; preds = %155
  %163 = load i8*, i8** %3, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = and i32 %166, 15
  %168 = icmp eq i32 %167, 15
  br i1 %168, label %169, label %184

169:                                              ; preds = %162
  %170 = load i8*, i8** %3, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 2
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = and i32 %173, 63
  %175 = icmp eq i32 %174, 63
  br i1 %175, label %176, label %184

176:                                              ; preds = %169
  %177 = load i8*, i8** %3, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 3
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = and i32 %180, 62
  %182 = icmp eq i32 %181, 62
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  store i32 -1, i32* %2, align 4
  br label %190

184:                                              ; preds = %176, %169, %162
  store i32 4, i32* %2, align 4
  br label %190

185:                                              ; preds = %155, %148, %145, %142, %122
  store i32 -1, i32* %2, align 4
  br label %190

186:                                              ; preds = %116
  br label %187

187:                                              ; preds = %186
  br label %188

188:                                              ; preds = %187
  br label %189

189:                                              ; preds = %188
  store i32 -1, i32* %2, align 4
  br label %190

190:                                              ; preds = %189, %185, %184, %183, %115, %114, %113, %35, %34, %13
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
