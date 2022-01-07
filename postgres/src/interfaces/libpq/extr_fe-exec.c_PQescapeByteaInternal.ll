; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQescapeByteaInternal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQescapeByteaInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@hextbl = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i8*, i64, i64*, i32, i32)* @PQescapeByteaInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @PQescapeByteaInternal(%struct.TYPE_3__* %0, i8* %1, i64 %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 2
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %19, align 8
  store i64 1, i64* %18, align 8
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %6
  %29 = load i64, i64* %19, align 8
  %30 = add i64 %29, 1
  %31 = load i64, i64* %10, align 8
  %32 = mul i64 2, %31
  %33 = add i64 %30, %32
  %34 = load i64, i64* %18, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %18, align 8
  br label %88

36:                                               ; preds = %6
  %37 = load i8*, i8** %9, align 8
  store i8* %37, i8** %14, align 8
  %38 = load i64, i64* %10, align 8
  store i64 %38, i64* %17, align 8
  br label %39

39:                                               ; preds = %82, %36
  %40 = load i64, i64* %17, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %87

42:                                               ; preds = %39
  %43 = load i8*, i8** %14, align 8
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp slt i32 %45, 32
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %14, align 8
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp sgt i32 %50, 126
  br i1 %51, label %52, label %57

52:                                               ; preds = %47, %42
  %53 = load i64, i64* %19, align 8
  %54 = add i64 %53, 3
  %55 = load i64, i64* %18, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %18, align 8
  br label %81

57:                                               ; preds = %47
  %58 = load i8*, i8** %14, align 8
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 39
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i64, i64* %18, align 8
  %64 = add i64 %63, 2
  store i64 %64, i64* %18, align 8
  br label %80

65:                                               ; preds = %57
  %66 = load i8*, i8** %14, align 8
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, 92
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i64, i64* %19, align 8
  %72 = load i64, i64* %19, align 8
  %73 = add i64 %71, %72
  %74 = load i64, i64* %18, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %18, align 8
  br label %79

76:                                               ; preds = %65
  %77 = load i64, i64* %18, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %18, align 8
  br label %79

79:                                               ; preds = %76, %70
  br label %80

80:                                               ; preds = %79, %62
  br label %81

81:                                               ; preds = %80, %52
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %17, align 8
  %84 = add i64 %83, -1
  store i64 %84, i64* %17, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %14, align 8
  br label %39

87:                                               ; preds = %39
  br label %88

88:                                               ; preds = %87, %28
  %89 = load i64, i64* %18, align 8
  %90 = load i64*, i64** %11, align 8
  store i64 %89, i64* %90, align 8
  %91 = load i64, i64* %18, align 8
  %92 = call i64 @malloc(i64 %91)
  %93 = inttoptr i64 %92 to i8*
  store i8* %93, i8** %16, align 8
  store i8* %93, i8** %15, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %105

96:                                               ; preds = %88
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %98 = icmp ne %struct.TYPE_3__* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %103 = call i32 @printfPQExpBuffer(i32* %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %96
  store i8* null, i8** %7, align 8
  br label %233

105:                                              ; preds = %88
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i8*, i8** %15, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %15, align 8
  store i8 92, i8* %112, align 1
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i8*, i8** %15, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %15, align 8
  store i8 92, i8* %115, align 1
  %117 = load i8*, i8** %15, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %15, align 8
  store i8 120, i8* %117, align 1
  br label %119

119:                                              ; preds = %114, %105
  %120 = load i8*, i8** %9, align 8
  store i8* %120, i8** %14, align 8
  %121 = load i64, i64* %10, align 8
  store i64 %121, i64* %17, align 8
  br label %122

122:                                              ; preds = %225, %119
  %123 = load i64, i64* %17, align 8
  %124 = icmp ugt i64 %123, 0
  br i1 %124, label %125, label %230

125:                                              ; preds = %122
  %126 = load i8*, i8** %14, align 8
  %127 = load i8, i8* %126, align 1
  store i8 %127, i8* %20, align 1
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %125
  %131 = load i8**, i8*** @hextbl, align 8
  %132 = load i8, i8* %20, align 1
  %133 = zext i8 %132 to i32
  %134 = ashr i32 %133, 4
  %135 = and i32 %134, 15
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %131, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = ptrtoint i8* %138 to i8
  %140 = load i8*, i8** %15, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %15, align 8
  store i8 %139, i8* %140, align 1
  %142 = load i8**, i8*** @hextbl, align 8
  %143 = load i8, i8* %20, align 1
  %144 = zext i8 %143 to i32
  %145 = and i32 %144, 15
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %142, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = ptrtoint i8* %148 to i8
  %150 = load i8*, i8** %15, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %15, align 8
  store i8 %149, i8* %150, align 1
  br label %224

152:                                              ; preds = %125
  %153 = load i8, i8* %20, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp slt i32 %154, 32
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = load i8, i8* %20, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp sgt i32 %158, 126
  br i1 %159, label %160, label %191

160:                                              ; preds = %156, %152
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %160
  %164 = load i8*, i8** %15, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %15, align 8
  store i8 92, i8* %164, align 1
  br label %166

166:                                              ; preds = %163, %160
  %167 = load i8*, i8** %15, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %15, align 8
  store i8 92, i8* %167, align 1
  %169 = load i8, i8* %20, align 1
  %170 = zext i8 %169 to i32
  %171 = ashr i32 %170, 6
  %172 = add nsw i32 %171, 48
  %173 = trunc i32 %172 to i8
  %174 = load i8*, i8** %15, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %15, align 8
  store i8 %173, i8* %174, align 1
  %176 = load i8, i8* %20, align 1
  %177 = zext i8 %176 to i32
  %178 = ashr i32 %177, 3
  %179 = and i32 %178, 7
  %180 = add nsw i32 %179, 48
  %181 = trunc i32 %180 to i8
  %182 = load i8*, i8** %15, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %15, align 8
  store i8 %181, i8* %182, align 1
  %184 = load i8, i8* %20, align 1
  %185 = zext i8 %184 to i32
  %186 = and i32 %185, 7
  %187 = add nsw i32 %186, 48
  %188 = trunc i32 %187 to i8
  %189 = load i8*, i8** %15, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %15, align 8
  store i8 %188, i8* %189, align 1
  br label %223

191:                                              ; preds = %156
  %192 = load i8, i8* %20, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp eq i32 %193, 39
  br i1 %194, label %195, label %200

195:                                              ; preds = %191
  %196 = load i8*, i8** %15, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %15, align 8
  store i8 39, i8* %196, align 1
  %198 = load i8*, i8** %15, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %15, align 8
  store i8 39, i8* %198, align 1
  br label %222

200:                                              ; preds = %191
  %201 = load i8, i8* %20, align 1
  %202 = zext i8 %201 to i32
  %203 = icmp eq i32 %202, 92
  br i1 %203, label %204, label %217

204:                                              ; preds = %200
  %205 = load i32, i32* %12, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %204
  %208 = load i8*, i8** %15, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %15, align 8
  store i8 92, i8* %208, align 1
  %210 = load i8*, i8** %15, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %15, align 8
  store i8 92, i8* %210, align 1
  br label %212

212:                                              ; preds = %207, %204
  %213 = load i8*, i8** %15, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %15, align 8
  store i8 92, i8* %213, align 1
  %215 = load i8*, i8** %15, align 8
  %216 = getelementptr inbounds i8, i8* %215, i32 1
  store i8* %216, i8** %15, align 8
  store i8 92, i8* %215, align 1
  br label %221

217:                                              ; preds = %200
  %218 = load i8, i8* %20, align 1
  %219 = load i8*, i8** %15, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %15, align 8
  store i8 %218, i8* %219, align 1
  br label %221

221:                                              ; preds = %217, %212
  br label %222

222:                                              ; preds = %221, %195
  br label %223

223:                                              ; preds = %222, %166
  br label %224

224:                                              ; preds = %223, %130
  br label %225

225:                                              ; preds = %224
  %226 = load i64, i64* %17, align 8
  %227 = add i64 %226, -1
  store i64 %227, i64* %17, align 8
  %228 = load i8*, i8** %14, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %14, align 8
  br label %122

230:                                              ; preds = %122
  %231 = load i8*, i8** %15, align 8
  store i8 0, i8* %231, align 1
  %232 = load i8*, i8** %16, align 8
  store i8* %232, i8** %7, align 8
  br label %233

233:                                              ; preds = %230, %104
  %234 = load i8*, i8** %7, align 8
  ret i8* %234
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
