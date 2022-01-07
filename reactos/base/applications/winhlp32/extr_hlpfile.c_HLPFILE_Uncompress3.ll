; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_Uncompress3.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_Uncompress3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [24 x i8] c"index in phrases %d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"buffer overflow (%p > %p)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*, i32*, i32*)* @HLPFILE_Uncompress3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HLPFILE_Uncompress3(%struct.TYPE_3__* %0, i8* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  br label %13

13:                                               ; preds = %202, %5
  %14 = load i32*, i32** %9, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp ult i32* %14, %15
  br i1 %16, label %17, label %205

17:                                               ; preds = %13
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %78

22:                                               ; preds = %17
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 2
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ugt i32 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, ...) @WINE_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  store i32 0, i32* %12, align 4
  br label %77

37:                                               ; preds = %22
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = add i32 %41, 1
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sub i32 %45, %52
  store i32 %53, i32* %12, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %12, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8*, i8** %8, align 8
  %59 = icmp ule i8* %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %37
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %64, i64 %72
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @memcpy(i8* %61, i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %60, %37
  br label %77

77:                                               ; preds = %76, %31
  br label %197

78:                                               ; preds = %17
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 3
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %145

83:                                               ; preds = %78
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  %87 = mul nsw i32 %86, 64
  store i32 %87, i32* %11, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %9, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %11, align 4
  %92 = add i32 %91, %90
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ugt i32 %93, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %83
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i8*, ...) @WINE_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %102)
  store i32 0, i32* %12, align 4
  br label %144

104:                                              ; preds = %83
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = add i32 %108, 1
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sub i32 %112, %119
  store i32 %120, i32* %12, align 4
  %121 = load i8*, i8** %7, align 8
  %122 = load i32, i32* %12, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8*, i8** %8, align 8
  %126 = icmp ule i8* %124, %125
  br i1 %126, label %127, label %143

127:                                              ; preds = %104
  %128 = load i8*, i8** %7, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %131, i64 %139
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @memcpy(i8* %128, i32* %140, i32 %141)
  br label %143

143:                                              ; preds = %127, %104
  br label %144

144:                                              ; preds = %143, %98
  br label %196

145:                                              ; preds = %78
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 7
  %149 = icmp eq i32 %148, 3
  br i1 %149, label %150, label %172

150:                                              ; preds = %145
  %151 = load i32*, i32** %9, align 8
  %152 = load i32, i32* %151, align 4
  %153 = sdiv i32 %152, 8
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %12, align 4
  %155 = load i8*, i8** %7, align 8
  %156 = load i32, i32* %12, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8*, i8** %8, align 8
  %160 = icmp ule i8* %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %150
  %162 = load i8*, i8** %7, align 8
  %163 = load i32*, i32** %9, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @memcpy(i8* %162, i32* %164, i32 %165)
  br label %167

167:                                              ; preds = %161, %150
  %168 = load i32, i32* %12, align 4
  %169 = load i32*, i32** %9, align 8
  %170 = zext i32 %168 to i64
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32* %171, i32** %9, align 8
  br label %195

172:                                              ; preds = %145
  %173 = load i32*, i32** %9, align 8
  %174 = load i32, i32* %173, align 4
  %175 = sdiv i32 %174, 16
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %12, align 4
  %177 = load i8*, i8** %7, align 8
  %178 = load i32, i32* %12, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = load i8*, i8** %8, align 8
  %182 = icmp ule i8* %180, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %172
  %184 = load i8*, i8** %7, align 8
  %185 = load i32*, i32** %9, align 8
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, 15
  %188 = icmp eq i32 %187, 7
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i32 32, i32 0
  %191 = trunc i32 %190 to i8
  %192 = load i32, i32* %12, align 4
  %193 = call i32 @memset(i8* %184, i8 signext %191, i32 %192)
  br label %194

194:                                              ; preds = %183, %172
  br label %195

195:                                              ; preds = %194, %167
  br label %196

196:                                              ; preds = %195, %144
  br label %197

197:                                              ; preds = %196, %77
  %198 = load i32, i32* %12, align 4
  %199 = load i8*, i8** %7, align 8
  %200 = zext i32 %198 to i64
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  store i8* %201, i8** %7, align 8
  br label %202

202:                                              ; preds = %197
  %203 = load i32*, i32** %9, align 8
  %204 = getelementptr inbounds i32, i32* %203, i32 1
  store i32* %204, i32** %9, align 8
  br label %13

205:                                              ; preds = %13
  %206 = load i8*, i8** %7, align 8
  %207 = load i8*, i8** %8, align 8
  %208 = icmp ugt i8* %206, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %205
  %210 = load i8*, i8** %7, align 8
  %211 = load i8*, i8** %8, align 8
  %212 = call i32 (i8*, ...) @WINE_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %210, i8* %211)
  br label %213

213:                                              ; preds = %209, %205
  %214 = load i32, i32* @TRUE, align 4
  ret i32 %214
}

declare dso_local i32 @WINE_ERR(i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
