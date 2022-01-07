; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrdhost.c_rrdhost_set_system_info_variable.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrdhost.c_rrdhost_set_system_info_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdhost_system_info = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"NETDATA_SYSTEM_OS_NAME\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"NETDATA_SYSTEM_OS_ID\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"NETDATA_SYSTEM_OS_ID_LIKE\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"NETDATA_SYSTEM_OS_VERSION\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"NETDATA_SYSTEM_OS_VERSION_ID\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"NETDATA_SYSTEM_OS_DETECTION\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"NETDATA_SYSTEM_KERNEL_NAME\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"NETDATA_SYSTEM_KERNEL_VERSION\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"NETDATA_SYSTEM_ARCHITECTURE\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"NETDATA_SYSTEM_VIRTUALIZATION\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"NETDATA_SYSTEM_VIRT_DETECTION\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"NETDATA_SYSTEM_CONTAINER\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"NETDATA_SYSTEM_CONTAINER_DETECTION\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rrdhost_set_system_info_variable(%struct.rrdhost_system_info* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.rrdhost_system_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.rrdhost_system_info* %0, %struct.rrdhost_system_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %13 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %12, i32 0, i32 12
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @freez(i8* %14)
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @strdupz(i8* %16)
  %18 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %19 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %18, i32 0, i32 12
  store i8* %17, i8** %19, align 8
  br label %189

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %26 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %25, i32 0, i32 11
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @freez(i8* %27)
  %29 = load i8*, i8** %6, align 8
  %30 = call i8* @strdupz(i8* %29)
  %31 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %32 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %31, i32 0, i32 11
  store i8* %30, i8** %32, align 8
  br label %188

33:                                               ; preds = %20
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %39 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %38, i32 0, i32 10
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @freez(i8* %40)
  %42 = load i8*, i8** %6, align 8
  %43 = call i8* @strdupz(i8* %42)
  %44 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %45 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %44, i32 0, i32 10
  store i8* %43, i8** %45, align 8
  br label %187

46:                                               ; preds = %33
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @strcmp(i8* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %52 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %51, i32 0, i32 9
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @freez(i8* %53)
  %55 = load i8*, i8** %6, align 8
  %56 = call i8* @strdupz(i8* %55)
  %57 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %58 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %57, i32 0, i32 9
  store i8* %56, i8** %58, align 8
  br label %186

59:                                               ; preds = %46
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %59
  %64 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %65 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %64, i32 0, i32 8
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @freez(i8* %66)
  %68 = load i8*, i8** %6, align 8
  %69 = call i8* @strdupz(i8* %68)
  %70 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %71 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %70, i32 0, i32 8
  store i8* %69, i8** %71, align 8
  br label %185

72:                                               ; preds = %59
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %72
  %77 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %78 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %77, i32 0, i32 7
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @freez(i8* %79)
  %81 = load i8*, i8** %6, align 8
  %82 = call i8* @strdupz(i8* %81)
  %83 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %84 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %83, i32 0, i32 7
  store i8* %82, i8** %84, align 8
  br label %184

85:                                               ; preds = %72
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %85
  %90 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %91 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %90, i32 0, i32 6
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @freez(i8* %92)
  %94 = load i8*, i8** %6, align 8
  %95 = call i8* @strdupz(i8* %94)
  %96 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %97 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %96, i32 0, i32 6
  store i8* %95, i8** %97, align 8
  br label %183

98:                                               ; preds = %85
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %98
  %103 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %104 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %103, i32 0, i32 5
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @freez(i8* %105)
  %107 = load i8*, i8** %6, align 8
  %108 = call i8* @strdupz(i8* %107)
  %109 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %110 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %109, i32 0, i32 5
  store i8* %108, i8** %110, align 8
  br label %182

111:                                              ; preds = %98
  %112 = load i8*, i8** %5, align 8
  %113 = call i32 @strcmp(i8* %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %111
  %116 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %117 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %116, i32 0, i32 4
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @freez(i8* %118)
  %120 = load i8*, i8** %6, align 8
  %121 = call i8* @strdupz(i8* %120)
  %122 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %123 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %122, i32 0, i32 4
  store i8* %121, i8** %123, align 8
  br label %181

124:                                              ; preds = %111
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %137, label %128

128:                                              ; preds = %124
  %129 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %130 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %129, i32 0, i32 3
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @freez(i8* %131)
  %133 = load i8*, i8** %6, align 8
  %134 = call i8* @strdupz(i8* %133)
  %135 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %136 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %135, i32 0, i32 3
  store i8* %134, i8** %136, align 8
  br label %180

137:                                              ; preds = %124
  %138 = load i8*, i8** %5, align 8
  %139 = call i32 @strcmp(i8* %138, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %137
  %142 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %143 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @freez(i8* %144)
  %146 = load i8*, i8** %6, align 8
  %147 = call i8* @strdupz(i8* %146)
  %148 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %149 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %148, i32 0, i32 2
  store i8* %147, i8** %149, align 8
  br label %179

150:                                              ; preds = %137
  %151 = load i8*, i8** %5, align 8
  %152 = call i32 @strcmp(i8* %151, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %163, label %154

154:                                              ; preds = %150
  %155 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %156 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @freez(i8* %157)
  %159 = load i8*, i8** %6, align 8
  %160 = call i8* @strdupz(i8* %159)
  %161 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %162 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %161, i32 0, i32 1
  store i8* %160, i8** %162, align 8
  br label %178

163:                                              ; preds = %150
  %164 = load i8*, i8** %5, align 8
  %165 = call i32 @strcmp(i8* %164, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %176, label %167

167:                                              ; preds = %163
  %168 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %169 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @freez(i8* %170)
  %172 = load i8*, i8** %6, align 8
  %173 = call i8* @strdupz(i8* %172)
  %174 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %4, align 8
  %175 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %174, i32 0, i32 0
  store i8* %173, i8** %175, align 8
  br label %177

176:                                              ; preds = %163
  store i32 1, i32* %7, align 4
  br label %177

177:                                              ; preds = %176, %167
  br label %178

178:                                              ; preds = %177, %154
  br label %179

179:                                              ; preds = %178, %141
  br label %180

180:                                              ; preds = %179, %128
  br label %181

181:                                              ; preds = %180, %115
  br label %182

182:                                              ; preds = %181, %102
  br label %183

183:                                              ; preds = %182, %89
  br label %184

184:                                              ; preds = %183, %76
  br label %185

185:                                              ; preds = %184, %63
  br label %186

186:                                              ; preds = %185, %50
  br label %187

187:                                              ; preds = %186, %37
  br label %188

188:                                              ; preds = %187, %24
  br label %189

189:                                              ; preds = %188, %11
  %190 = load i32, i32* %7, align 4
  ret i32 %190
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @freez(i8*) #1

declare dso_local i8* @strdupz(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
