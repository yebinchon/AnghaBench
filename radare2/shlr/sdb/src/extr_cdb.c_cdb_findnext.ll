; ModuleID = '/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_cdb.c_cdb_findnext.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_cdb.c_cdb_findnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@KVLSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdb_findnext(%struct.cdb* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [8 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cdb* %0, %struct.cdb** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %9, align 4
  %16 = load %struct.cdb*, %struct.cdb** %6, align 8
  %17 = getelementptr inbounds %struct.cdb, %struct.cdb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %204

21:                                               ; preds = %4
  %22 = load %struct.cdb*, %struct.cdb** %6, align 8
  %23 = getelementptr inbounds %struct.cdb, %struct.cdb* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load %struct.cdb*, %struct.cdb** %6, align 8
  %25 = getelementptr inbounds %struct.cdb, %struct.cdb* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %102, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  %31 = and i32 %30, 255
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i64 8, i64 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %13, align 4
  %36 = load %struct.cdb*, %struct.cdb** %6, align 8
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 %39, 2
  %41 = and i32 %40, 1023
  %42 = call i32 @cdb_read(%struct.cdb* %36, i8* %37, i32 %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %28
  store i32 -1, i32* %5, align 4
  br label %204

45:                                               ; preds = %28
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %47 = load %struct.cdb*, %struct.cdb** %6, align 8
  %48 = getelementptr inbounds %struct.cdb, %struct.cdb* %47, i32 0, i32 3
  %49 = call i32 @ut32_unpack(i8* %46, i32* %48)
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp eq i64 %51, 8
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  %56 = call i32 @ut32_unpack(i8* %55, i32* %11)
  br label %61

57:                                               ; preds = %45
  %58 = load %struct.cdb*, %struct.cdb** %6, align 8
  %59 = getelementptr inbounds %struct.cdb, %struct.cdb* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.cdb*, %struct.cdb** %6, align 8
  %64 = getelementptr inbounds %struct.cdb, %struct.cdb* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 -1, i32* %5, align 4
  br label %204

68:                                               ; preds = %61
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.cdb*, %struct.cdb** %6, align 8
  %71 = getelementptr inbounds %struct.cdb, %struct.cdb* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %69, %72
  %74 = sext i32 %73 to i64
  %75 = udiv i64 %74, 8
  %76 = trunc i64 %75 to i32
  %77 = load %struct.cdb*, %struct.cdb** %6, align 8
  %78 = getelementptr inbounds %struct.cdb, %struct.cdb* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.cdb*, %struct.cdb** %6, align 8
  %80 = getelementptr inbounds %struct.cdb, %struct.cdb* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %204

84:                                               ; preds = %68
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.cdb*, %struct.cdb** %6, align 8
  %87 = getelementptr inbounds %struct.cdb, %struct.cdb* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %7, align 4
  %89 = ashr i32 %88, 8
  %90 = load %struct.cdb*, %struct.cdb** %6, align 8
  %91 = getelementptr inbounds %struct.cdb, %struct.cdb* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = srem i32 %89, %92
  %94 = shl i32 %93, 3
  store i32 %94, i32* %7, align 4
  %95 = load %struct.cdb*, %struct.cdb** %6, align 8
  %96 = getelementptr inbounds %struct.cdb, %struct.cdb* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %97, %98
  %100 = load %struct.cdb*, %struct.cdb** %6, align 8
  %101 = getelementptr inbounds %struct.cdb, %struct.cdb* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %84, %21
  br label %103

103:                                              ; preds = %202, %102
  %104 = load %struct.cdb*, %struct.cdb** %6, align 8
  %105 = getelementptr inbounds %struct.cdb, %struct.cdb* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.cdb*, %struct.cdb** %6, align 8
  %108 = getelementptr inbounds %struct.cdb, %struct.cdb* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %203

111:                                              ; preds = %103
  %112 = load %struct.cdb*, %struct.cdb** %6, align 8
  %113 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %114 = load %struct.cdb*, %struct.cdb** %6, align 8
  %115 = getelementptr inbounds %struct.cdb, %struct.cdb* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @cdb_read(%struct.cdb* %112, i8* %113, i32 8, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %111
  store i32 0, i32* %5, align 4
  br label %204

120:                                              ; preds = %111
  %121 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %122 = getelementptr inbounds i8, i8* %121, i64 4
  %123 = call i32 @ut32_unpack(i8* %122, i32* %11)
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %120
  store i32 0, i32* %5, align 4
  br label %204

127:                                              ; preds = %120
  %128 = load %struct.cdb*, %struct.cdb** %6, align 8
  %129 = getelementptr inbounds %struct.cdb, %struct.cdb* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load %struct.cdb*, %struct.cdb** %6, align 8
  %133 = getelementptr inbounds %struct.cdb, %struct.cdb* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = add i64 %135, 8
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %133, align 4
  %138 = load %struct.cdb*, %struct.cdb** %6, align 8
  %139 = getelementptr inbounds %struct.cdb, %struct.cdb* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.cdb*, %struct.cdb** %6, align 8
  %142 = getelementptr inbounds %struct.cdb, %struct.cdb* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.cdb*, %struct.cdb** %6, align 8
  %145 = getelementptr inbounds %struct.cdb, %struct.cdb* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 3
  %148 = add nsw i32 %143, %147
  %149 = icmp eq i32 %140, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %127
  %151 = load %struct.cdb*, %struct.cdb** %6, align 8
  %152 = getelementptr inbounds %struct.cdb, %struct.cdb* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.cdb*, %struct.cdb** %6, align 8
  %155 = getelementptr inbounds %struct.cdb, %struct.cdb* %154, i32 0, i32 6
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %150, %127
  %157 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %158 = call i32 @ut32_unpack(i8* %157, i32* %7)
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.cdb*, %struct.cdb** %6, align 8
  %161 = getelementptr inbounds %struct.cdb, %struct.cdb* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %159, %162
  br i1 %163, label %164, label %202

164:                                              ; preds = %156
  %165 = load %struct.cdb*, %struct.cdb** %6, align 8
  %166 = load %struct.cdb*, %struct.cdb** %6, align 8
  %167 = getelementptr inbounds %struct.cdb, %struct.cdb* %166, i32 0, i32 8
  %168 = load i32, i32* %11, align 4
  %169 = call i32 @cdb_getkvlen(%struct.cdb* %165, i32* %7, i32* %167, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %164
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %171, %164
  store i32 -1, i32* %5, align 4
  br label %204

175:                                              ; preds = %171
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %201

179:                                              ; preds = %175
  %180 = load %struct.cdb*, %struct.cdb** %6, align 8
  %181 = load i8*, i8** %8, align 8
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* @KVLSZ, align 4
  %185 = add nsw i32 %183, %184
  %186 = call i32 @match(%struct.cdb* %180, i8* %181, i32 %182, i32 %185)
  store i32 %186, i32* %12, align 4
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %188, label %189

188:                                              ; preds = %179
  store i32 0, i32* %5, align 4
  br label %204

189:                                              ; preds = %179
  %190 = load i32, i32* %12, align 4
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %200

192:                                              ; preds = %189
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* @KVLSZ, align 4
  %195 = add nsw i32 %193, %194
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %195, %196
  %198 = load %struct.cdb*, %struct.cdb** %6, align 8
  %199 = getelementptr inbounds %struct.cdb, %struct.cdb* %198, i32 0, i32 7
  store i32 %197, i32* %199, align 4
  store i32 1, i32* %5, align 4
  br label %204

200:                                              ; preds = %189
  br label %201

201:                                              ; preds = %200, %175
  br label %202

202:                                              ; preds = %201, %156
  br label %103

203:                                              ; preds = %103
  store i32 0, i32* %5, align 4
  br label %204

204:                                              ; preds = %203, %192, %188, %174, %126, %119, %83, %67, %44, %20
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i32 @cdb_read(%struct.cdb*, i8*, i32, i32) #1

declare dso_local i32 @ut32_unpack(i8*, i32*) #1

declare dso_local i32 @cdb_getkvlen(%struct.cdb*, i32*, i32*, i32) #1

declare dso_local i32 @match(%struct.cdb*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
