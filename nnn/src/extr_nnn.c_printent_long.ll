; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_printent_long.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_printent_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.entry = type { i32, i32, i32, i32, i32, i32 }

@FILE_SELECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%F %R\00", align 1
@A_REVERSE = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%c%-16.16s  %s %8.8s* %s*\0A\00", align 1
@cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@blk_shift = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"%c%-16.16s  %s %8.8s  %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%c%-16.16s  %s %8.8s  %s/\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%c%-16.16s  %s        @  %s@\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%c%-16.16s  %s        %c  %s%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.entry*, i32, i32)* @printent_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printent_long(%struct.entry* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [24 x i8], align 16
  %8 = alloca [4 x i8], align 1
  %9 = alloca i8, align 1
  %10 = alloca [3 x i8], align 1
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  store %struct.entry* %0, %struct.entry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8 0, i8* %9, align 1
  %13 = bitcast [3 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %13, i8 0, i64 3, i1 false)
  %14 = load %struct.entry*, %struct.entry** %4, align 8
  %15 = getelementptr inbounds %struct.entry, %struct.entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FILE_SELECTED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 43, i32 32
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %11, align 1
  %23 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %24 = load %struct.entry*, %struct.entry** %4, align 8
  %25 = getelementptr inbounds %struct.entry, %struct.entry* %24, i32 0, i32 5
  %26 = call i32 @localtime(i32* %25)
  %27 = call i32 @strftime(i8* %23, i32 24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 23
  store i8 0, i8* %28, align 1
  %29 = load %struct.entry*, %struct.entry** %4, align 8
  %30 = getelementptr inbounds %struct.entry, %struct.entry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 6
  %33 = and i32 %32, 7
  %34 = add nsw i32 48, %33
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  store i8 %35, i8* %36, align 1
  %37 = load %struct.entry*, %struct.entry** %4, align 8
  %38 = getelementptr inbounds %struct.entry, %struct.entry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 3
  %41 = and i32 %40, 7
  %42 = add nsw i32 48, %41
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  store i8 %43, i8* %44, align 1
  %45 = load %struct.entry*, %struct.entry** %4, align 8
  %46 = getelementptr inbounds %struct.entry, %struct.entry* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 7
  %49 = add nsw i32 48, %48
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  store i8 %50, i8* %51, align 1
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 3
  store i8 0, i8* %52, align 1
  %53 = load %struct.entry*, %struct.entry** %4, align 8
  %54 = getelementptr inbounds %struct.entry, %struct.entry* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @S_ISREG(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %3
  %59 = load %struct.entry*, %struct.entry** %4, align 8
  %60 = getelementptr inbounds %struct.entry, %struct.entry* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 64
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %64, %58, %3
  %68 = load %struct.entry*, %struct.entry** %4, align 8
  %69 = getelementptr inbounds %struct.entry, %struct.entry* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i8* @unescape(i32 %70, i32 %71, i32* null)
  store i8* %72, i8** %12, align 8
  %73 = load %struct.entry*, %struct.entry** %4, align 8
  %74 = getelementptr inbounds %struct.entry, %struct.entry* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @resetdircolor(i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %67
  %80 = load i32, i32* @A_REVERSE, align 4
  %81 = call i32 @attron(i32 %80)
  br label %82

82:                                               ; preds = %79, %67
  %83 = load %struct.entry*, %struct.entry** %4, align 8
  %84 = getelementptr inbounds %struct.entry, %struct.entry* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @S_IFMT, align 4
  %87 = and i32 %85, %86
  switch i32 %87, label %182 [
    i32 129, label %88
    i32 132, label %137
    i32 130, label %158
    i32 128, label %164
    i32 131, label %166
    i32 134, label %172
    i32 133, label %177
  ]

88:                                               ; preds = %82
  %89 = load %struct.entry*, %struct.entry** %4, align 8
  %90 = getelementptr inbounds %struct.entry, %struct.entry* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 64
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %115

94:                                               ; preds = %88
  %95 = load i8, i8* %11, align 1
  %96 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %97 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfg, i32 0, i32 0), align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load %struct.entry*, %struct.entry** %4, align 8
  %102 = getelementptr inbounds %struct.entry, %struct.entry* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @blk_shift, align 4
  %105 = shl i32 %103, %104
  br label %110

106:                                              ; preds = %94
  %107 = load %struct.entry*, %struct.entry** %4, align 8
  %108 = getelementptr inbounds %struct.entry, %struct.entry* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  br label %110

110:                                              ; preds = %106, %100
  %111 = phi i32 [ %105, %100 ], [ %109, %106 ]
  %112 = call i32 @coolsize(i32 %111)
  %113 = load i8*, i8** %12, align 8
  %114 = call i32 (i8*, i8, i8*, i8*, ...) @printw(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8 signext %95, i8* %96, i8* %97, i32 %112, i8* %113)
  br label %136

115:                                              ; preds = %88
  %116 = load i8, i8* %11, align 1
  %117 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %118 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfg, i32 0, i32 0), align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load %struct.entry*, %struct.entry** %4, align 8
  %123 = getelementptr inbounds %struct.entry, %struct.entry* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @blk_shift, align 4
  %126 = shl i32 %124, %125
  br label %131

127:                                              ; preds = %115
  %128 = load %struct.entry*, %struct.entry** %4, align 8
  %129 = getelementptr inbounds %struct.entry, %struct.entry* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  br label %131

131:                                              ; preds = %127, %121
  %132 = phi i32 [ %126, %121 ], [ %130, %127 ]
  %133 = call i32 @coolsize(i32 %132)
  %134 = load i8*, i8** %12, align 8
  %135 = call i32 (i8*, i8, i8*, i8*, ...) @printw(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8 signext %116, i8* %117, i8* %118, i32 %133, i8* %134)
  br label %136

136:                                              ; preds = %131, %110
  br label %196

137:                                              ; preds = %82
  %138 = load i8, i8* %11, align 1
  %139 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %140 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfg, i32 0, i32 0), align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load %struct.entry*, %struct.entry** %4, align 8
  %145 = getelementptr inbounds %struct.entry, %struct.entry* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @blk_shift, align 4
  %148 = shl i32 %146, %147
  br label %153

149:                                              ; preds = %137
  %150 = load %struct.entry*, %struct.entry** %4, align 8
  %151 = getelementptr inbounds %struct.entry, %struct.entry* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  br label %153

153:                                              ; preds = %149, %143
  %154 = phi i32 [ %148, %143 ], [ %152, %149 ]
  %155 = call i32 @coolsize(i32 %154)
  %156 = load i8*, i8** %12, align 8
  %157 = call i32 (i8*, i8, i8*, i8*, ...) @printw(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8 signext %138, i8* %139, i8* %140, i32 %155, i8* %156)
  br label %196

158:                                              ; preds = %82
  %159 = load i8, i8* %11, align 1
  %160 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %161 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %162 = load i8*, i8** %12, align 8
  %163 = call i32 (i8*, i8, i8*, i8*, ...) @printw(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8 signext %159, i8* %160, i8* %161, i8* %162)
  br label %196

164:                                              ; preds = %82
  %165 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  store i8 61, i8* %165, align 1
  store i8 61, i8* %9, align 1
  br label %166

166:                                              ; preds = %82, %164
  %167 = load i8, i8* %9, align 1
  %168 = icmp ne i8 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  store i8 124, i8* %170, align 1
  store i8 124, i8* %9, align 1
  br label %171

171:                                              ; preds = %169, %166
  br label %172

172:                                              ; preds = %82, %171
  %173 = load i8, i8* %9, align 1
  %174 = icmp ne i8 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %172
  store i8 98, i8* %9, align 1
  br label %176

176:                                              ; preds = %175, %172
  br label %177

177:                                              ; preds = %82, %176
  %178 = load i8, i8* %9, align 1
  %179 = icmp ne i8 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %177
  store i8 99, i8* %9, align 1
  br label %181

181:                                              ; preds = %180, %177
  br label %182

182:                                              ; preds = %82, %181
  %183 = load i8, i8* %9, align 1
  %184 = icmp ne i8 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  store i8 63, i8* %186, align 1
  store i8 63, i8* %9, align 1
  br label %187

187:                                              ; preds = %185, %182
  %188 = load i8, i8* %11, align 1
  %189 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %190 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %191 = load i8, i8* %9, align 1
  %192 = sext i8 %191 to i32
  %193 = load i8*, i8** %12, align 8
  %194 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %195 = call i32 (i8*, i8, i8*, i8*, ...) @printw(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8 signext %188, i8* %189, i8* %190, i32 %192, i8* %193, i8* %194)
  br label %196

196:                                              ; preds = %187, %158, %153, %136
  %197 = load i32, i32* %5, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32, i32* @A_REVERSE, align 4
  %201 = call i32 @attroff(i32 %200)
  br label %202

202:                                              ; preds = %199, %196
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #2

declare dso_local i32 @localtime(i32*) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local i8* @unescape(i32, i32, i32*) #2

declare dso_local i32 @resetdircolor(i32) #2

declare dso_local i32 @attron(i32) #2

declare dso_local i32 @printw(i8*, i8 signext, i8*, i8*, ...) #2

declare dso_local i32 @coolsize(i32) #2

declare dso_local i32 @attroff(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
