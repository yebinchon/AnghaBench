; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_dex.c_dex_get_proto.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_dex.c_dex_get_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_8__, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"()%s\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Cannot realloc to %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(%s)%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_10__*, i32)* @dex_get_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dex_get_proto(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [8 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [8 x i32], align 16
  %21 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 1, i32* %16, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %22, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %202

29:                                               ; preds = %2
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp uge i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  store i8* null, i8** %3, align 8
  br label %202

44:                                               ; preds = %29
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp uge i64 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  store i8* null, i8** %3, align 8
  br label %202

60:                                               ; preds = %44
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @getstr(%struct.TYPE_10__* %61, i32 %68)
  store i8* %69, i8** %10, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %60
  store i8* null, i8** %3, align 8
  br label %202

73:                                               ; preds = %60
  %74 = load i64, i64* %6, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i8*, i8** %10, align 8
  %78 = call i8* (i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %77)
  store i8* %78, i8** %3, align 8
  br label %202

79:                                               ; preds = %73
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = trunc i64 %83 to i32
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  %86 = call i32 @r_buf_read_at(i32 %82, i32 %84, i32* %85, i32 32)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %79
  store i8* null, i8** %3, align 8
  br label %202

89:                                               ; preds = %79
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  %91 = call i64 @r_read_le32(i32* %90)
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* %8, align 8
  %93 = mul i64 %92, 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp uge i64 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  store i8* null, i8** %3, align 8
  br label %202

99:                                               ; preds = %89
  store i32 0, i32* %15, align 4
  br label %100

100:                                              ; preds = %188, %99
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %8, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %191

105:                                              ; preds = %100
  store i32 0, i32* %18, align 4
  %106 = load i64, i64* %6, align 8
  %107 = add i64 %106, 4
  %108 = load i32, i32* %15, align 4
  %109 = mul nsw i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = add i64 %107, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = sext i32 %113 to i64
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp uge i64 %114, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %105
  br label %191

120:                                              ; preds = %105
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %19, align 4
  %125 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %126 = call i32 @r_buf_read_at(i32 %123, i32 %124, i32* %125, i32 32)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %120
  br label %191

129:                                              ; preds = %120
  %130 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %131 = call i64 @r_read_le16(i32* %130)
  store i64 %131, i64* %13, align 8
  %132 = load i64, i64* %13, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp uge i64 %132, %136
  br i1 %137, label %144, label %138

138:                                              ; preds = %129
  %139 = load i64, i64* %13, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp uge i64 %139, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138, %129
  br label %191

145:                                              ; preds = %138
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = load i64, i64* %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i8* @getstr(%struct.TYPE_10__* %146, i32 %153)
  store i8* %154, i8** %12, align 8
  %155 = load i8*, i8** %12, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %145
  br label %191

158:                                              ; preds = %145
  %159 = load i8*, i8** %12, align 8
  %160 = call i32 @strlen(i8* %159)
  store i32 %160, i32* %18, align 4
  %161 = load i32, i32* %18, align 4
  %162 = add nsw i32 %161, 1
  %163 = load i32, i32* %16, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %16, align 4
  %165 = load i8*, i8** %11, align 8
  %166 = load i32, i32* %16, align 4
  %167 = call i8* @realloc(i8* %165, i32 %166)
  store i8* %167, i8** %21, align 8
  %168 = load i8*, i8** %21, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %158
  %171 = load i32, i32* %16, align 4
  %172 = call i32 @eprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %171)
  br label %191

173:                                              ; preds = %158
  %174 = load i8*, i8** %21, align 8
  store i8* %174, i8** %11, align 8
  %175 = load i8*, i8** %11, align 8
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i8*, i8** %12, align 8
  %180 = call i32 @strcpy(i8* %178, i8* %179)
  %181 = load i32, i32* %18, align 4
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %14, align 4
  %184 = load i8*, i8** %11, align 8
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  store i8 0, i8* %187, align 1
  br label %188

188:                                              ; preds = %173
  %189 = load i32, i32* %15, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %15, align 4
  br label %100

191:                                              ; preds = %170, %157, %144, %128, %119, %100
  %192 = load i8*, i8** %11, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load i8*, i8** %11, align 8
  %196 = load i8*, i8** %10, align 8
  %197 = call i8* (i8*, i8*, ...) @r_str_newf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %195, i8* %196)
  store i8* %197, i8** %9, align 8
  %198 = load i8*, i8** %11, align 8
  %199 = call i32 @free(i8* %198)
  br label %200

200:                                              ; preds = %194, %191
  %201 = load i8*, i8** %9, align 8
  store i8* %201, i8** %3, align 8
  br label %202

202:                                              ; preds = %200, %98, %88, %76, %72, %59, %43, %28
  %203 = load i8*, i8** %3, align 8
  ret i8* %203
}

declare dso_local i8* @getstr(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @r_str_newf(i8*, i8*, ...) #1

declare dso_local i32 @r_buf_read_at(i32, i32, i32*, i32) #1

declare dso_local i64 @r_read_le32(i32*) #1

declare dso_local i64 @r_read_le16(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @eprintf(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
